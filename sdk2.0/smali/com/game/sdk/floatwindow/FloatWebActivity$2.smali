.class Lcom/game/sdk/floatwindow/FloatWebActivity$2;
.super Landroid/webkit/WebViewClient;
.source "FloatWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/floatwindow/FloatWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/floatwindow/FloatWebActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/floatwindow/FloatWebActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/floatwindow/FloatWebActivity$2;->this$0:Lcom/game/sdk/floatwindow/FloatWebActivity;

    .line 95
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/floatwindow/FloatWebActivity$2;)Lcom/game/sdk/floatwindow/FloatWebActivity;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatWebActivity$2;->this$0:Lcom/game/sdk/floatwindow/FloatWebActivity;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 112
    :try_start_0
    invoke-static {}, Lcom/game/sdk/utils/DialogUtil;->dismissDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 99
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatWebActivity$2;->this$0:Lcom/game/sdk/floatwindow/FloatWebActivity;

    # getter for: Lcom/game/sdk/floatwindow/FloatWebActivity;->wv:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/game/sdk/floatwindow/FloatWebActivity;->access$2(Lcom/game/sdk/floatwindow/FloatWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/floatwindow/FloatWebActivity$2$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/floatwindow/FloatWebActivity$2$1;-><init>(Lcom/game/sdk/floatwindow/FloatWebActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method
