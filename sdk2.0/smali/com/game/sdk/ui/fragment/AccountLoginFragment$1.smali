.class Lcom/game/sdk/ui/fragment/AccountLoginFragment$1;
.super Ljava/lang/Object;
.source "AccountLoginFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/AccountLoginFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$1;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$1;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    # getter for: Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userNameEt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->access$0(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$1;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    # getter for: Lcom/game/sdk/ui/fragment/AccountLoginFragment;->passWordEt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->access$1(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 185
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 179
    return-void
.end method
