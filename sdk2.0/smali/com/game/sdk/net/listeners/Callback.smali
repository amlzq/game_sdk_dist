.class public interface abstract Lcom/game/sdk/net/listeners/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/game/sdk/net/entry/Response;)V
.end method

.method public abstract onSuccess(Lcom/game/sdk/domain/ResultInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/domain/ResultInfo",
            "<TT;>;)V"
        }
    .end annotation
.end method
