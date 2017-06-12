.class public Lcom/game/sdk/db/impl/UserLoginInfodao;
.super Ljava/lang/Object;
.source "UserLoginInfodao.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "accounttype"

.field public static final IS_VALIDATE:Ljava/lang/String; = "validate"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final TABLENAME:Ljava/lang/String; = "userlogin"

.field private static final TAG:Ljava/lang/String; = "UserLoginInfodao"

.field public static final USERNAME:Ljava/lang/String; = "username"

.field private static userlogininfodao:Lcom/game/sdk/db/impl/UserLoginInfodao;


# instance fields
.field private dbHelper:Lcom/game/sdk/db/DBHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v3, p0, Lcom/game/sdk/db/impl/UserLoginInfodao;->dbHelper:Lcom/game/sdk/db/DBHelper;

    .line 27
    new-instance v0, Lcom/game/sdk/db/DBHelper;

    const-string v1, "userlogin.db"

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v3, v2}, Lcom/game/sdk/db/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/game/sdk/db/impl/UserLoginInfodao;->dbHelper:Lcom/game/sdk/db/DBHelper;

    .line 28
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lcom/game/sdk/db/impl/UserLoginInfodao;->userlogininfodao:Lcom/game/sdk/db/impl/UserLoginInfodao;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/game/sdk/db/impl/UserLoginInfodao;

    invoke-direct {v0, p0}, Lcom/game/sdk/db/impl/UserLoginInfodao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/game/sdk/db/impl/UserLoginInfodao;->userlogininfodao:Lcom/game/sdk/db/impl/UserLoginInfodao;

    .line 34
    :cond_0
    sget-object v0, Lcom/game/sdk/db/impl/UserLoginInfodao;->userlogininfodao:Lcom/game/sdk/db/impl/UserLoginInfodao;

    return-object v0
.end method


# virtual methods
.method public deleteUserLoginByName(Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v1, p0, Lcom/game/sdk/db/impl/UserLoginInfodao;->dbHelper:Lcom/game/sdk/db/DBHelper;

    invoke-virtual {v1}, Lcom/game/sdk/db/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 134
    .local v0, "w_db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "delete from userlogin where username=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 138
    const/4 v0, 0x0

    .line 139
    return-void
.end method

.method public findUserLoginInfoByName(Ljava/lang/String;)Z
    .locals 6
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "flag":Z
    iget-object v3, p0, Lcom/game/sdk/db/impl/UserLoginInfodao;->dbHelper:Lcom/game/sdk/db/DBHelper;

    invoke-virtual {v3}, Lcom/game/sdk/db/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 115
    .local v2, "r_db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    const-string v3, "select * from userlogin where username=?"

    .line 117
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 116
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 118
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    const/4 v1, 0x1

    .line 121
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 125
    const/4 v2, 0x0

    .line 126
    return v1
.end method

.method public getPwdByUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v3, p0, Lcom/game/sdk/db/impl/UserLoginInfodao;->dbHelper:Lcom/game/sdk/db/DBHelper;

    invoke-virtual {v3}, Lcom/game/sdk/db/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 165
    .local v2, "r_db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, ""

    .line 166
    .local v1, "pwd":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    const-string v3, "select * from userlogin where username =?"

    .line 168
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 167
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 169
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    const-string v3, "password"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 175
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 176
    const/4 v2, 0x0

    .line 177
    return-object v1
.end method

.method public getUserInfoByName(Ljava/lang/String;)Lcom/game/sdk/domain/UserInfo;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v4, 0x0

    .line 218
    .local v4, "ulinfo":Lcom/game/sdk/domain/UserInfo;
    iget-object v7, p0, Lcom/game/sdk/db/impl/UserLoginInfodao;->dbHelper:Lcom/game/sdk/db/DBHelper;

    invoke-virtual {v7}, Lcom/game/sdk/db/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 219
    .local v3, "r_db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 220
    const-string v7, "select * from  userlogin where username = ? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 221
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 222
    new-instance v4, Lcom/game/sdk/domain/UserInfo;

    .end local v4    # "ulinfo":Lcom/game/sdk/domain/UserInfo;
    invoke-direct {v4}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    .line 223
    .restart local v4    # "ulinfo":Lcom/game/sdk/domain/UserInfo;
    const-string v7, "username"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, "username":Ljava/lang/String;
    const-string v7, "password"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "pwd":Ljava/lang/String;
    const-string v7, "validate"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 226
    .local v6, "validate":I
    const-string v7, "accounttype"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 227
    .local v0, "accounttype":I
    iput-object v5, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 228
    iput-object v2, v4, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 229
    iput v6, v4, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 230
    iput v0, v4, Lcom/game/sdk/domain/UserInfo;->accountType:I

    .line 232
    .end local v0    # "accounttype":I
    .end local v2    # "pwd":Ljava/lang/String;
    .end local v5    # "username":Ljava/lang/String;
    .end local v6    # "validate":I
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 235
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 236
    const/4 v3, 0x0

    .line 237
    return-object v4
.end method

.method public getUserInfoLastByType()Lcom/game/sdk/domain/UserInfo;
    .locals 8

    .prologue
    .line 186
    const/4 v3, 0x0

    .line 187
    .local v3, "ulinfo":Lcom/game/sdk/domain/UserInfo;
    iget-object v6, p0, Lcom/game/sdk/db/impl/UserLoginInfodao;->dbHelper:Lcom/game/sdk/db/DBHelper;

    invoke-virtual {v6}, Lcom/game/sdk/db/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 188
    .local v2, "r_db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 189
    const-string v6, "select * from  userlogin"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 190
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 191
    new-instance v3, Lcom/game/sdk/domain/UserInfo;

    .end local v3    # "ulinfo":Lcom/game/sdk/domain/UserInfo;
    invoke-direct {v3}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    .line 192
    .restart local v3    # "ulinfo":Lcom/game/sdk/domain/UserInfo;
    const-string v6, "username"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "username":Ljava/lang/String;
    const-string v6, "password"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "pwd":Ljava/lang/String;
    const-string v6, "validate"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 197
    .local v5, "validate":I
    iput-object v4, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 198
    iput-object v1, v3, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 199
    iput v5, v3, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 203
    .end local v1    # "pwd":Ljava/lang/String;
    .end local v4    # "username":Ljava/lang/String;
    .end local v5    # "validate":I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 206
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 207
    const/4 v2, 0x0

    .line 208
    return-object v3
.end method

.method public getUserLoginInfoByType()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    const/4 v6, 0x0

    .line 42
    .local v6, "userLogininfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    iget-object v9, p0, Lcom/game/sdk/db/impl/UserLoginInfodao;->dbHelper:Lcom/game/sdk/db/DBHelper;

    invoke-virtual {v9}, Lcom/game/sdk/db/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 43
    .local v3, "r_db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 44
    const-string v9, "select * from userlogin"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 45
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "userLogininfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .restart local v6    # "userLogininfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    const/4 v4, 0x0

    .line 54
    .local v4, "ulinfo":Lcom/game/sdk/domain/UserInfo;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 55
    new-instance v5, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v5}, Lcom/game/sdk/domain/UserInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v4    # "ulinfo":Lcom/game/sdk/domain/UserInfo;
    .local v5, "ulinfo":Lcom/game/sdk/domain/UserInfo;
    :try_start_1
    const-string v9, "username"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "username":Ljava/lang/String;
    const-string v9, "password"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "pwd":Ljava/lang/String;
    const-string v9, "validate"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 59
    .local v8, "validate":I
    const-string v9, "accounttype"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 61
    .local v0, "accounttype":I
    iput-object v7, v5, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 62
    iput-object v2, v5, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 63
    iput v8, v5, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 64
    iput v0, v5, Lcom/game/sdk/domain/UserInfo;->accountType:I

    .line 66
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 72
    .end local v0    # "accounttype":I
    .end local v2    # "pwd":Ljava/lang/String;
    .end local v5    # "ulinfo":Lcom/game/sdk/domain/UserInfo;
    .end local v7    # "username":Ljava/lang/String;
    .end local v8    # "validate":I
    .restart local v4    # "ulinfo":Lcom/game/sdk/domain/UserInfo;
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v9

    if-nez v9, :cond_2

    .line 87
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 89
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v4    # "ulinfo":Lcom/game/sdk/domain/UserInfo;
    :cond_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 90
    const/4 v3, 0x0

    .line 91
    return-object v6

    .line 73
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "ulinfo":Lcom/game/sdk/domain/UserInfo;
    :cond_2
    new-instance v4, Lcom/game/sdk/domain/UserInfo;

    .end local v4    # "ulinfo":Lcom/game/sdk/domain/UserInfo;
    invoke-direct {v4}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    .line 74
    .restart local v4    # "ulinfo":Lcom/game/sdk/domain/UserInfo;
    const-string v9, "username"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 75
    .restart local v7    # "username":Ljava/lang/String;
    const-string v9, "password"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .restart local v2    # "pwd":Ljava/lang/String;
    const-string v9, "validate"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 77
    .restart local v8    # "validate":I
    const-string v9, "accounttype"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 79
    .restart local v0    # "accounttype":I
    iput-object v7, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 80
    iput-object v2, v4, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 81
    iput v8, v4, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 82
    iput v0, v4, Lcom/game/sdk/domain/UserInfo;->accountType:I

    .line 84
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const/4 v4, 0x0

    goto :goto_0

    .line 68
    .end local v0    # "accounttype":I
    .end local v2    # "pwd":Ljava/lang/String;
    .end local v7    # "username":Ljava/lang/String;
    .end local v8    # "validate":I
    :catch_0
    move-exception v9

    goto :goto_0

    .end local v4    # "ulinfo":Lcom/game/sdk/domain/UserInfo;
    .restart local v5    # "ulinfo":Lcom/game/sdk/domain/UserInfo;
    :catch_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "ulinfo":Lcom/game/sdk/domain/UserInfo;
    .restart local v4    # "ulinfo":Lcom/game/sdk/domain/UserInfo;
    goto :goto_0
.end method

.method public saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "validateMobile"    # I
    .param p4, "accounttype"    # I

    .prologue
    .line 99
    iget-object v1, p0, Lcom/game/sdk/db/impl/UserLoginInfodao;->dbHelper:Lcom/game/sdk/db/DBHelper;

    invoke-virtual {v1}, Lcom/game/sdk/db/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 100
    .local v0, "w_db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "insert into userlogin(username,password,validate,accounttype) values(?,?,?,?)"

    .line 102
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 105
    const/4 v0, 0x0

    .line 106
    return-void
.end method
