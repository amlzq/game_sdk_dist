.class public Lcom/game/sdk/domain/ModuleInfo;
.super Ljava/lang/Object;
.source "ModuleInfo.java"


# instance fields
.field public ico:Ljava/lang/String;

.field public id:I

.field public num:I

.field public sort:I

.field public status:I

.field public title:Ljava/lang/String;

.field public type:I

.field public typeVal:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type_val"
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
