.class public Lcom/game/sdk/engin/MainModuleEngin$ParamsInfo;
.super Ljava/lang/Object;
.source "MainModuleEngin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/engin/MainModuleEngin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParamsInfo"
.end annotation


# instance fields
.field public page:I

.field public user_id:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/engin/MainModuleEngin$ParamsInfo;->page:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/game/sdk/engin/MainModuleEngin$ParamsInfo;->user_id:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/game/sdk/engin/MainModuleEngin$ParamsInfo;->version:Ljava/lang/String;

    .line 49
    return-void
.end method
