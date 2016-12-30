.class public Lcom/game/sdk/domain/GameGiftItem;
.super Ljava/lang/Object;
.source "GameGiftItem.java"

# interfaces
.implements Lcom/game/sdk/domain/JsonParseInterface;


# instance fields
.field public content:Ljava/lang/String;

.field public game_image:Ljava/lang/String;

.field public gameid:I

.field public infoid:I

.field public starttime:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShotName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "e"

    return-object v0
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 35
    :try_start_0
    const-string v2, "a"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    :goto_0
    iput-object v2, p0, Lcom/game/sdk/domain/GameGiftItem;->title:Ljava/lang/String;

    .line 36
    const-string v2, "b"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    :goto_1
    iput-object v2, p0, Lcom/game/sdk/domain/GameGiftItem;->game_image:Ljava/lang/String;

    .line 37
    const-string v2, "c"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    :goto_2
    iput-object v2, p0, Lcom/game/sdk/domain/GameGiftItem;->content:Ljava/lang/String;

    .line 38
    const-string v2, "d"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    :goto_3
    iput v2, p0, Lcom/game/sdk/domain/GameGiftItem;->infoid:I

    .line 39
    const-string v2, "e"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_4
    iput v1, p0, Lcom/game/sdk/domain/GameGiftItem;->gameid:I

    .line 43
    :goto_5
    return-void

    .line 35
    :cond_0
    const-string v2, "a"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 36
    :cond_1
    const-string v2, "b"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 37
    :cond_2
    const-string v2, "c"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 38
    :cond_3
    const-string v2, "d"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    .line 39
    :cond_4
    const-string v1, "e"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_4

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method
