.class public Lcom/game/sdk/domain/LoginOutInfo;
.super Ljava/lang/Object;
.source "LoginOutInfo.java"


# instance fields
.field public img:Ljava/lang/String;

.field public type:I

.field public typeVal:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type_value"
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
