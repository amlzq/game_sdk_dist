.class Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CompAignAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/adapter/CompAignAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field compAignDateTv:Landroid/widget/TextView;

.field compAignIv:Landroid/widget/ImageView;

.field compAignTv:Landroid/widget/TextView;

.field detailBtn:Landroid/widget/Button;

.field final synthetic this$0:Lcom/game/sdk/adapter/CompAignAdapter;


# direct methods
.method constructor <init>(Lcom/game/sdk/adapter/CompAignAdapter;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;->this$0:Lcom/game/sdk/adapter/CompAignAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
