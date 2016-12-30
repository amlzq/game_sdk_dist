.class Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MainModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/adapter/MainModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field moduleIv:Landroid/widget/ImageView;

.field moduleTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/game/sdk/adapter/MainModuleAdapter;


# direct methods
.method constructor <init>(Lcom/game/sdk/adapter/MainModuleAdapter;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->this$0:Lcom/game/sdk/adapter/MainModuleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
