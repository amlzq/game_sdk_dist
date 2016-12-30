.class public Lcom/game/sdk/domain/GameCoin;
.super Ljava/lang/Object;
.source "GameCoin.java"


# instance fields
.field public gameId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "game_id"
    .end annotation
.end field

.field public ico:Ljava/lang/String;

.field public money:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
