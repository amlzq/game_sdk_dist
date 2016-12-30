.class public Lcom/game/sdk/net/entry/UpFileInfo;
.super Ljava/lang/Object;
.source "UpFileInfo.java"


# instance fields
.field public file:Ljava/io/File;

.field public filename:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "name"

    iput-object v0, p0, Lcom/game/sdk/net/entry/UpFileInfo;->name:Ljava/lang/String;

    .line 8
    const-string v0, "filename"

    iput-object v0, p0, Lcom/game/sdk/net/entry/UpFileInfo;->filename:Ljava/lang/String;

    .line 5
    return-void
.end method
