.class public Lcom/game/sdk/engin/ChargeEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "ChargeEngin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Lcom/game/sdk/domain/PayInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public chargeMoney:D

.field public mContext:Landroid/content/Context;

.field public md5signstr:Ljava/lang/String;

.field private payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

.field public payType:I

.field public payWay:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/game/sdk/engin/BaseEngin;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/game/sdk/engin/ChargeEngin;->chargeMoney:D

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/game/sdk/domain/PayRequestParams;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/game/sdk/domain/PayRequestParams;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/game/sdk/engin/ChargeEngin;->chargeMoney:D

    .line 43
    iput-object p1, p0, Lcom/game/sdk/engin/ChargeEngin;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/game/sdk/engin/ChargeEngin;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DLjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "payType"    # I
    .param p4, "payWay"    # Ljava/lang/String;
    .param p5, "chargeMoney"    # D
    .param p7, "md5signstr"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/game/sdk/engin/ChargeEngin;->chargeMoney:D

    .line 50
    iput-object p1, p0, Lcom/game/sdk/engin/ChargeEngin;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/game/sdk/engin/ChargeEngin;->userId:Ljava/lang/String;

    .line 52
    iput p3, p0, Lcom/game/sdk/engin/ChargeEngin;->payType:I

    .line 53
    iput-object p4, p0, Lcom/game/sdk/engin/ChargeEngin;->payWay:Ljava/lang/String;

    .line 54
    iput-wide p5, p0, Lcom/game/sdk/engin/ChargeEngin;->chargeMoney:D

    .line 55
    iput-object p7, p0, Lcom/game/sdk/engin/ChargeEngin;->md5signstr:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->PAY_URL:Ljava/lang/String;

    return-object v0
.end method

.method public pay()Lcom/game/sdk/domain/PayInfo;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 69
    const/4 v3, 0x0

    .line 71
    .local v3, "payinfo":Lcom/game/sdk/domain/PayInfo;
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "user_id"

    iget-object v7, p0, Lcom/game/sdk/engin/ChargeEngin;->userId:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v6, "is_game_pay"

    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/game/sdk/engin/ChargeEngin;->payType:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v6, "pay_ways"

    iget-object v7, p0, Lcom/game/sdk/engin/ChargeEngin;->payWay:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v6, "amount"

    new-instance v7, Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/game/sdk/engin/ChargeEngin;->chargeMoney:D

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v6, "md5signstr"

    iget-object v7, p0, Lcom/game/sdk/engin/ChargeEngin;->md5signstr:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/4 v6, 0x1

    const-class v7, Lcom/game/sdk/domain/PayInfo;

    invoke-virtual {p0, v6, v7, v2}, Lcom/game/sdk/engin/ChargeEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v5

    .line 80
    .local v5, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PayInfo;>;"
    if-eqz v5, :cond_0

    iget v6, v5, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v6, v10, :cond_0

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5145\u503c\u7ed3\u679c----"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    invoke-static {v7}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 82
    iget-object v6, v5, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, Lcom/game/sdk/domain/PayInfo;

    move-object v3, v0

    .line 83
    iget v6, v5, Lcom/game/sdk/domain/ResultInfo;->code:I

    iput v6, v3, Lcom/game/sdk/domain/PayInfo;->code:I

    .line 92
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PayInfo;>;"
    :goto_0
    return-object v3

    .line 85
    .restart local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PayInfo;>;"
    :cond_0
    new-instance v4, Lcom/game/sdk/domain/PayInfo;

    invoke-direct {v4}, Lcom/game/sdk/domain/PayInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v3    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .local v4, "payinfo":Lcom/game/sdk/domain/PayInfo;
    :try_start_1
    iget v6, v5, Lcom/game/sdk/domain/ResultInfo;->code:I

    iput v6, v4, Lcom/game/sdk/domain/PayInfo;->code:I

    .line 87
    iget-object v6, v5, Lcom/game/sdk/domain/ResultInfo;->message:Ljava/lang/String;

    iput-object v6, v4, Lcom/game/sdk/domain/PayInfo;->errorMsg:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 89
    .end local v4    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .restart local v3    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    goto :goto_0

    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PayInfo;>;"
    :catch_0
    move-exception v6

    goto :goto_0

    .end local v3    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .restart local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .restart local v5    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PayInfo;>;"
    :catch_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .restart local v3    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    goto :goto_0
.end method

.method public payGame()Lcom/game/sdk/domain/PayInfo;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 101
    const/4 v2, 0x0

    .line 103
    .local v2, "payinfo":Lcom/game/sdk/domain/PayInfo;
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "user_id"

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v5, "is_game_pay"

    iget-object v6, p0, Lcom/game/sdk/engin/ChargeEngin;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    iget-object v6, v6, Lcom/game/sdk/domain/PayRequestParams;->is_game_pay:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v5, "pay_ways"

    iget-object v6, p0, Lcom/game/sdk/engin/ChargeEngin;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    iget-object v6, v6, Lcom/game/sdk/domain/PayRequestParams;->pay_ways:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v5, "amount"

    iget-object v6, p0, Lcom/game/sdk/engin/ChargeEngin;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    iget-object v6, v6, Lcom/game/sdk/domain/PayRequestParams;->amount:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v5, "good_type_name"

    iget-object v6, p0, Lcom/game/sdk/engin/ChargeEngin;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    iget-object v6, v6, Lcom/game/sdk/domain/PayRequestParams;->good_type_name:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v5, "goods_id"

    iget-object v6, p0, Lcom/game/sdk/engin/ChargeEngin;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    iget-object v6, v6, Lcom/game/sdk/domain/PayRequestParams;->goods_id:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v5, "card_id"

    iget-object v6, p0, Lcom/game/sdk/engin/ChargeEngin;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    iget-object v6, v6, Lcom/game/sdk/domain/PayRequestParams;->card_id:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v5, "role"

    iget-object v6, p0, Lcom/game/sdk/engin/ChargeEngin;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    iget-object v6, v6, Lcom/game/sdk/domain/PayRequestParams;->role:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v5, "server"

    iget-object v6, p0, Lcom/game/sdk/engin/ChargeEngin;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    iget-object v6, v6, Lcom/game/sdk/domain/PayRequestParams;->server:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v5, "appid"

    iget-object v6, p0, Lcom/game/sdk/engin/ChargeEngin;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    iget-object v6, v6, Lcom/game/sdk/domain/PayRequestParams;->appid:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v5, "productname"

    iget-object v6, p0, Lcom/game/sdk/engin/ChargeEngin;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    iget-object v6, v6, Lcom/game/sdk/domain/PayRequestParams;->productname:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v5, "attach"

    iget-object v6, p0, Lcom/game/sdk/engin/ChargeEngin;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    iget-object v6, v6, Lcom/game/sdk/domain/PayRequestParams;->attach:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v5, "md5signstr"

    iget-object v6, p0, Lcom/game/sdk/engin/ChargeEngin;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    iget-object v6, v6, Lcom/game/sdk/domain/PayRequestParams;->md5signstr:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/4 v5, 0x1

    const-class v6, Lcom/game/sdk/domain/PayInfo;

    invoke-virtual {p0, v5, v6, v1}, Lcom/game/sdk/engin/ChargeEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v4

    .line 121
    .local v4, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PayInfo;>;"
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v5, v7, :cond_0

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5145\u503c\u7ed3\u679c----"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 123
    iget-object v5, v4, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Lcom/game/sdk/domain/PayInfo;

    move-object v2, v0

    .line 125
    iget v5, v4, Lcom/game/sdk/domain/ResultInfo;->code:I

    iput v5, v2, Lcom/game/sdk/domain/PayInfo;->code:I

    .line 126
    iget-object v5, v4, Lcom/game/sdk/domain/ResultInfo;->message:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayInfo;->errorMsg:Ljava/lang/String;

    .line 135
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PayInfo;>;"
    :goto_0
    return-object v2

    .line 128
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PayInfo;>;"
    :cond_0
    new-instance v3, Lcom/game/sdk/domain/PayInfo;

    invoke-direct {v3}, Lcom/game/sdk/domain/PayInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v2    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .local v3, "payinfo":Lcom/game/sdk/domain/PayInfo;
    :try_start_1
    iget v5, v4, Lcom/game/sdk/domain/ResultInfo;->code:I

    iput v5, v3, Lcom/game/sdk/domain/PayInfo;->code:I

    .line 130
    iget-object v5, v4, Lcom/game/sdk/domain/ResultInfo;->message:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/game/sdk/domain/ResultInfo;->message:Ljava/lang/String;

    :goto_1
    iput-object v5, v3, Lcom/game/sdk/domain/PayInfo;->errorMsg:Ljava/lang/String;

    move-object v2, v3

    .line 132
    .end local v3    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .restart local v2    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    goto :goto_0

    .line 130
    .end local v2    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .restart local v3    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    :cond_1
    const-string v5, "\u652f\u4ed8\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 132
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .end local v4    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PayInfo;>;"
    .restart local v2    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    :catch_0
    move-exception v5

    goto :goto_0

    .end local v2    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .restart local v4    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PayInfo;>;"
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .restart local v2    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    goto :goto_0
.end method
