.class public Lcom/game/sdk/domain/ScoreStore;
.super Ljava/lang/Object;
.source "ScoreStore.java"


# instance fields
.field public currStock:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "curr_stock"
    .end annotation
.end field

.field public desp:Ljava/lang/String;

.field public gameId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "game_id"
    .end annotation
.end field

.field public gameName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "game_name"
    .end annotation
.end field

.field public id:I

.field public img:Ljava/lang/String;

.field public isComm:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "is_comm"
    .end annotation
.end field

.field public maxBuyNum:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "max_buy_num"
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public sort:Ljava/lang/String;

.field public status:I

.field public stock:Ljava/lang/String;

.field public typeId:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type_id"
    .end annotation
.end field

.field public typeName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type_name"
    .end annotation
.end field

.field public typeVal:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type_val"
    .end annotation
.end field

.field public ucEndTime:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uc_end_time"
    .end annotation
.end field

.field public ucMoney:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uc_money"
    .end annotation
.end field

.field public ucStartTime:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uc_start_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
