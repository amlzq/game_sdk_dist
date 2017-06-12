.class Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1$1;
.super Landroid/webkit/WebViewClient;
.source "CompAignDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1$1;->this$1:Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;

    .line 77
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method
