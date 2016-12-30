.class Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;
.super Ljava/lang/Object;
.source "PhoneLoginFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "row"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "adapterview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    # getter for: Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$3(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 320
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    # getter for: Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userLoginInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$4(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    invoke-static {v1, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$5(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Lcom/game/sdk/domain/UserInfo;)V

    .line 321
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    # getter for: Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userinfoSelect:Lcom/game/sdk/domain/UserInfo;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$6(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Lcom/game/sdk/domain/UserInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$7(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Lcom/game/sdk/domain/UserInfo;)V

    .line 322
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    # getter for: Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginUserEt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$8(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    # getter for: Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userinfoSelect:Lcom/game/sdk/domain/UserInfo;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$6(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Lcom/game/sdk/domain/UserInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    # getter for: Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateEt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$2(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    # getter for: Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userinfoSelect:Lcom/game/sdk/domain/UserInfo;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$6(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Lcom/game/sdk/domain/UserInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method
