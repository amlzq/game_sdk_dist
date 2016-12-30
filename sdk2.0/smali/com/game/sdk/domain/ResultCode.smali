.class public Lcom/game/sdk/domain/ResultCode;
.super Ljava/lang/Object;
.source "ResultCode.java"

# interfaces
.implements Lcom/game/sdk/domain/JsonParseInterface;


# instance fields
.field public code:I

.field public data:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public gttb:Ljava/lang/String;

.field public isBindPhone:I

.field public logintime:J

.field public msg:Ljava/lang/String;

.field public orderid:Ljava/lang/String;

.field public partnerId:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public privateKey:Ljava/lang/String;

.field public ptbkey:Ljava/lang/String;

.field public publickey:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public starttime:Ljava/lang/String;

.field public ttb:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShotName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public loginoutJson(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 72
    :try_start_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/game/sdk/domain/ResultCode;->code:I

    .line 74
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->msg:Ljava/lang/String;

    .line 80
    :goto_2
    return-void

    .line 72
    :cond_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 74
    :cond_1
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public oneregJson(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 119
    :try_start_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/game/sdk/domain/ResultCode;->code:I

    .line 120
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->username:Ljava/lang/String;

    .line 121
    const-string v1, "d"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_2
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->password:Ljava/lang/String;

    .line 122
    const-string v1, "c"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    :goto_3
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->msg:Ljava/lang/String;

    .line 128
    :goto_4
    return-void

    .line 119
    :cond_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 120
    :cond_1
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 121
    :cond_2
    const-string v1, "d"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 122
    :cond_3
    const-string v1, "c"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_3

    .line 124
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4
.end method

.method public parseAlipayJson(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 169
    :try_start_0
    const-string v2, "a"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/game/sdk/domain/ResultCode;->code:I

    .line 170
    const-string v2, "b"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    :goto_1
    iput-object v2, p0, Lcom/game/sdk/domain/ResultCode;->msg:Ljava/lang/String;

    .line 171
    const-string v2, "c"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    :goto_2
    iput-object v2, p0, Lcom/game/sdk/domain/ResultCode;->orderid:Ljava/lang/String;

    .line 172
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "params"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "params":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 174
    const-string v2, "partnerid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ""

    :goto_3
    iput-object v2, p0, Lcom/game/sdk/domain/ResultCode;->partnerId:Ljava/lang/String;

    .line 175
    const-string v2, "email"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ""

    :goto_4
    iput-object v2, p0, Lcom/game/sdk/domain/ResultCode;->email:Ljava/lang/String;

    .line 176
    const-string v2, "privatekey"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, ""

    :goto_5
    iput-object v2, p0, Lcom/game/sdk/domain/ResultCode;->privateKey:Ljava/lang/String;

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/game/sdk/domain/ResultCode;->partnerId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/game/sdk/domain/ResultCode;->privateKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 183
    .end local v1    # "params":Lorg/json/JSONObject;
    :cond_0
    :goto_6
    return-void

    .line 169
    :cond_1
    const-string v2, "a"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 170
    :cond_2
    const-string v2, "b"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 171
    :cond_3
    const-string v2, "c"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 174
    .restart local v1    # "params":Lorg/json/JSONObject;
    :cond_4
    const-string v2, "partnerid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 175
    :cond_5
    const-string v2, "email"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 176
    :cond_6
    const-string v2, "privatekey"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_5

    .line 179
    .end local v1    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6
.end method

.method public parseCFTJson(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 207
    :try_start_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/game/sdk/domain/ResultCode;->code:I

    .line 208
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->url:Ljava/lang/String;

    .line 209
    const-string v1, "c"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_2
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->msg:Ljava/lang/String;

    .line 210
    const-string v1, "d"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    :goto_3
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->orderid:Ljava/lang/String;

    .line 216
    :goto_4
    return-void

    .line 207
    :cond_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 208
    :cond_1
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 209
    :cond_2
    const-string v1, "c"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 210
    :cond_3
    const-string v1, "d"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_3

    .line 212
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4
.end method

.method public parseECOJson(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 226
    :try_start_0
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/game/sdk/domain/ResultCode;->code:I

    .line 227
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->data:Ljava/lang/String;

    .line 228
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_2
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->msg:Ljava/lang/String;

    .line 234
    :goto_3
    return-void

    .line 226
    :cond_0
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 227
    :cond_1
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 228
    :cond_2
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    .line 230
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    :try_start_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/game/sdk/domain/ResultCode;->code:I

    .line 53
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->username:Ljava/lang/String;

    .line 54
    const-string v1, "c"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_2
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->password:Ljava/lang/String;

    .line 55
    const-string v1, "userId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    :goto_3
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->sign:Ljava/lang/String;

    .line 56
    const-string v1, ""

    const-string v4, "e"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 57
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/game/sdk/domain/ResultCode;->logintime:J

    .line 61
    :goto_4
    const-string v1, "f"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ""

    :goto_5
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->msg:Ljava/lang/String;

    .line 67
    :goto_6
    return-void

    .line 52
    :cond_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 53
    :cond_1
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 54
    :cond_2
    const-string v1, "c"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 55
    :cond_3
    const-string v1, "userId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 59
    :cond_4
    const-string v1, "e"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_7
    iput-wide v2, p0, Lcom/game/sdk/domain/ResultCode;->logintime:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 59
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_5
    :try_start_1
    const-string v1, "e"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_7

    .line 61
    :cond_6
    const-string v1, "f"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_5
.end method

.method public parseNowPayJson(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 150
    :try_start_0
    const-string v2, "a"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/game/sdk/domain/ResultCode;->code:I

    .line 151
    const-string v2, "b"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    :goto_1
    iput-object v2, p0, Lcom/game/sdk/domain/ResultCode;->msg:Ljava/lang/String;

    .line 152
    const-string v2, "c"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    :goto_2
    iput-object v2, p0, Lcom/game/sdk/domain/ResultCode;->orderid:Ljava/lang/String;

    .line 153
    const-string v2, "starttime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    iput-object v2, p0, Lcom/game/sdk/domain/ResultCode;->starttime:Ljava/lang/String;

    .line 154
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "params"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "params":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 156
    const-string v2, "partnerid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ""

    :goto_4
    iput-object v2, p0, Lcom/game/sdk/domain/ResultCode;->partnerId:Ljava/lang/String;

    .line 157
    iget-object v2, p0, Lcom/game/sdk/domain/ResultCode;->partnerId:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 163
    .end local v1    # "params":Lorg/json/JSONObject;
    :cond_0
    :goto_5
    return-void

    .line 150
    :cond_1
    const-string v2, "a"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 151
    :cond_2
    const-string v2, "b"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 152
    :cond_3
    const-string v2, "c"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 153
    :cond_4
    const-string v2, "starttime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 156
    .restart local v1    # "params":Lorg/json/JSONObject;
    :cond_5
    const-string v2, "partnerid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_4

    .line 159
    .end local v1    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method

.method public parseOrderidJson(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 244
    :try_start_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/game/sdk/domain/ResultCode;->code:I

    .line 245
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->msg:Ljava/lang/String;

    .line 250
    :goto_2
    return-void

    .line 244
    :cond_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 245
    :cond_1
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 246
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public parseTTBJson(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 134
    :try_start_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/game/sdk/domain/ResultCode;->code:I

    .line 135
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->msg:Ljava/lang/String;

    .line 136
    const-string v1, "c"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_2
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->orderid:Ljava/lang/String;

    .line 142
    :goto_3
    return-void

    .line 134
    :cond_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 135
    :cond_1
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 136
    :cond_2
    const-string v1, "c"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    .line 138
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method public parseTTBTwoJson(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 188
    :try_start_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/game/sdk/domain/ResultCode;->code:I

    .line 189
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->data:Ljava/lang/String;

    .line 190
    const-string v1, "c"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_2
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->msg:Ljava/lang/String;

    .line 196
    :goto_3
    return-void

    .line 188
    :cond_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 189
    :cond_1
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 190
    :cond_2
    const-string v1, "c"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method public regJson(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 85
    :try_start_0
    const-string v4, "a"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    :goto_0
    iput v4, p0, Lcom/game/sdk/domain/ResultCode;->code:I

    .line 86
    const-string v4, "b"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    :goto_1
    iput-object v4, p0, Lcom/game/sdk/domain/ResultCode;->username:Ljava/lang/String;

    .line 87
    const-string v4, "c"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ""

    :goto_2
    iput-object v4, p0, Lcom/game/sdk/domain/ResultCode;->password:Ljava/lang/String;

    .line 88
    const-string v4, "g"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, ""

    :goto_3
    iput-object v4, p0, Lcom/game/sdk/domain/ResultCode;->msg:Ljava/lang/String;

    .line 89
    const-string v4, "f"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, ""

    :goto_4
    iput-object v4, p0, Lcom/game/sdk/domain/ResultCode;->ptbkey:Ljava/lang/String;

    .line 90
    const-string v4, "h"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v1

    :goto_5
    iput v4, p0, Lcom/game/sdk/domain/ResultCode;->isBindPhone:I

    .line 91
    const-string v4, "i"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "0"

    :goto_6
    iput-object v4, p0, Lcom/game/sdk/domain/ResultCode;->ttb:Ljava/lang/String;

    .line 92
    const-string v4, "j"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "0"

    :goto_7
    iput-object v4, p0, Lcom/game/sdk/domain/ResultCode;->gttb:Ljava/lang/String;

    .line 94
    iget-object v4, p0, Lcom/game/sdk/domain/ResultCode;->ttb:Ljava/lang/String;

    sput-object v4, Lcom/game/sdk/TTWAppService;->ttb:Ljava/lang/String;

    .line 95
    iget-object v4, p0, Lcom/game/sdk/domain/ResultCode;->gttb:Ljava/lang/String;

    sput-object v4, Lcom/game/sdk/TTWAppService;->gttb:Ljava/lang/String;

    .line 96
    const-string v4, "badge"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_8
    sput v1, Lcom/game/sdk/TTWAppService;->badge:I

    .line 98
    const-string v1, "userId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, ""

    :goto_9
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->userId:Ljava/lang/String;

    .line 99
    const-string v1, "sign"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, ""

    :goto_a
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->sign:Ljava/lang/String;

    .line 101
    const-string v1, ""

    const-string v4, "e"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 102
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/game/sdk/domain/ResultCode;->logintime:J

    .line 107
    :goto_b
    const-string v1, "publickey"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, ""

    :goto_c
    iput-object v1, p0, Lcom/game/sdk/domain/ResultCode;->publickey:Ljava/lang/String;

    .line 114
    :goto_d
    return-void

    .line 85
    :cond_0
    const-string v4, "a"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 86
    :cond_1
    const-string v4, "b"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 87
    :cond_2
    const-string v4, "c"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 88
    :cond_3
    const-string v4, "g"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 89
    :cond_4
    const-string v4, "f"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 90
    :cond_5
    const-string v4, "h"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_5

    .line 91
    :cond_6
    const-string v4, "i"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 92
    :cond_7
    const-string v4, "j"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    .line 96
    :cond_8
    const-string v1, "badge"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    .line 98
    :cond_9
    const-string v1, "userId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 99
    :cond_a
    const-string v1, "sign"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 104
    :cond_b
    const-string v1, "e"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_e
    iput-wide v2, p0, Lcom/game/sdk/domain/ResultCode;->logintime:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    .line 110
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d

    .line 104
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_c
    :try_start_1
    const-string v1, "e"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_e

    .line 107
    :cond_d
    const-string v1, "publickey"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_c
.end method
