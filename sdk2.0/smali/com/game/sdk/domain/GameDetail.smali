.class public Lcom/game/sdk/domain/GameDetail;
.super Ljava/lang/Object;
.source "GameDetail.java"

# interfaces
.implements Lcom/game/sdk/domain/JsonParseInterface;
.implements Ljava/io/Serializable;


# instance fields
.field public androidurl:Ljava/lang/String;

.field public baoming:Ljava/lang/String;

.field public count:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public function:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public jietu1:Ljava/lang/String;

.field public jietu2:Ljava/lang/String;

.field public jietu3:Ljava/lang/String;

.field public jietu4:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public versions:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShotName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "b"

    return-object v0
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 42
    :try_start_0
    const-string v0, "f"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/game/sdk/domain/GameDetail;->name:Ljava/lang/String;

    .line 43
    const-string v0, "a"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/game/sdk/domain/GameDetail;->image:Ljava/lang/String;

    .line 45
    const-string v0, "d"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lcom/game/sdk/domain/GameDetail;->size:Ljava/lang/String;

    .line 47
    const-string v0, "c"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_3
    iput-object v0, p0, Lcom/game/sdk/domain/GameDetail;->versions:Ljava/lang/String;

    .line 53
    const-string v0, "b"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_4
    iput-object v0, p0, Lcom/game/sdk/domain/GameDetail;->description:Ljava/lang/String;

    .line 55
    const-string v0, "e"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    :goto_5
    iput-object v0, p0, Lcom/game/sdk/domain/GameDetail;->androidurl:Ljava/lang/String;

    .line 59
    :goto_6
    return-void

    .line 42
    :cond_0
    const-string v0, "f"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    const-string v0, "a"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 45
    :cond_2
    const-string v0, "d"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 47
    :cond_3
    const-string v0, "c"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 53
    :cond_4
    const-string v0, "b"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 55
    :cond_5
    const-string v0, "e"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_5

    .line 57
    :catch_0
    move-exception v0

    goto :goto_6
.end method
