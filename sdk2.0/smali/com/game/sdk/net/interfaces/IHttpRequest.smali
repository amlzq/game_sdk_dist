.class public interface abstract Lcom/game/sdk/net/interfaces/IHttpRequest;
.super Ljava/lang/Object;
.source "IHttpRequest.java"


# virtual methods
.method public abstract aget(Ljava/lang/String;Lcom/game/sdk/net/listeners/OnHttpResonseListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/game/sdk/net/exception/NullResonseListenerException;
        }
    .end annotation
.end method

.method public abstract apost(Ljava/lang/String;Ljava/util/Map;Lcom/game/sdk/net/listeners/OnHttpResonseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game/sdk/net/listeners/OnHttpResonseListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/game/sdk/net/exception/NullResonseListenerException;
        }
    .end annotation
.end method

.method public abstract apost2(Ljava/lang/String;Ljava/util/Map;Lcom/game/sdk/net/listeners/OnHttpResonseListener;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game/sdk/net/listeners/OnHttpResonseListener;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/game/sdk/net/exception/NullResonseListenerException;
        }
    .end annotation
.end method

.method public abstract auploadFile(Ljava/lang/String;Lcom/game/sdk/net/entry/UpFileInfo;Ljava/util/Map;Lcom/game/sdk/net/listeners/OnHttpResonseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/game/sdk/net/entry/UpFileInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game/sdk/net/listeners/OnHttpResonseListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/game/sdk/net/exception/NullResonseListenerException;
        }
    .end annotation
.end method

.method public abstract cancel(Ljava/lang/String;)V
.end method

.method public abstract get(Ljava/lang/String;)Lcom/game/sdk/net/entry/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/Map;)Lcom/game/sdk/net/entry/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/game/sdk/net/entry/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/game/sdk/net/exception/NullResonseListenerException;
        }
    .end annotation
.end method

.method public abstract post2(Ljava/lang/String;Ljava/util/Map;Z)Lcom/game/sdk/net/entry/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/game/sdk/net/entry/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/game/sdk/net/exception/NullResonseListenerException;
        }
    .end annotation
.end method

.method public abstract uploadFile(Ljava/lang/String;Lcom/game/sdk/net/entry/UpFileInfo;Ljava/util/Map;)Lcom/game/sdk/net/entry/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/game/sdk/net/entry/UpFileInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/game/sdk/net/entry/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
