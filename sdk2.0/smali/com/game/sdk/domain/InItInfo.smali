.class public Lcom/game/sdk/domain/InItInfo;
.super Ljava/lang/Object;
.source "InItInfo.java"


# instance fields
.field public bugUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "bug_url"
    .end annotation
.end field

.field public color:I

.field public debug:Ljava/lang/String;

.field public floatBitmp:Landroid/graphics/Bitmap;

.field public floatIco:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "float_ico"
    .end annotation
.end field

.field public gameBoxDownUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "box_down_url"
    .end annotation
.end field

.field public isMqr:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "is_mqr"
    .end annotation
.end field

.field public launchImg:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "launch_img"
    .end annotation
.end field

.field public logo:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "login_logo"
    .end annotation
.end field

.field public logoBitmp:Landroid/graphics/Bitmap;

.field public logout:Lcom/game/sdk/domain/LoginOutInfo;

.field public lunchBitmp:Landroid/graphics/Bitmap;

.field public mqrNumLimit:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mqr_num_limit"
    .end annotation
.end field

.field public mtCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mt_code"
    .end annotation
.end field

.field public payway:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/PayWay;",
            ">;"
        }
    .end annotation
.end field

.field public playBitmp:Landroid/graphics/Bitmap;

.field public publickey:Ljava/lang/String;

.field public qq:Ljava/lang/String;

.field public qqQun:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "qq_qun"
    .end annotation
.end field

.field public registerBitmp:Landroid/graphics/Bitmap;

.field public style:Ljava/lang/String;

.field public tel:Ljava/lang/String;

.field public template:Lcom/game/sdk/domain/StyleInfo;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "template"
    .end annotation
.end field

.field public themeColor:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "color"
    .end annotation
.end field

.field public tip:Ljava/lang/String;

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation
.end field

.field public versionInfo:Lcom/game/sdk/domain/VersionInfo;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "version_upd"
    .end annotation
.end field

.field public weixin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setThemeColor()V
    .locals 3

    .prologue
    .line 87
    :try_start_0
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->themeColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/game/sdk/domain/InItInfo;->color:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "#2AB1F2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/game/sdk/domain/InItInfo;->color:I

    .line 90
    const-string v1, "#2AB1F2"

    iput-object v1, p0, Lcom/game/sdk/domain/InItInfo;->themeColor:Ljava/lang/String;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u521d\u59cb\u5316\u4fe1\u606f\u6709\u8bef->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/InItInfo;->themeColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method
