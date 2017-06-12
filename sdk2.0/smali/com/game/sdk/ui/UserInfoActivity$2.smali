.class Lcom/game/sdk/ui/UserInfoActivity$2;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/UserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/UserInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/UserInfoActivity$2;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateDate(Ljava/lang/String;)V
    .locals 1
    .param p1, "newBirth"    # Ljava/lang/String;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity$2;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    # getter for: Lcom/game/sdk/ui/UserInfoActivity;->birthTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/UserInfoActivity;->access$5(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "myyear"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 326
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity$2;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v2, p2}, Lcom/game/sdk/ui/UserInfoActivity;->access$9(Lcom/game/sdk/ui/UserInfoActivity;I)V

    .line 327
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity$2;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v2, p3}, Lcom/game/sdk/ui/UserInfoActivity;->access$10(Lcom/game/sdk/ui/UserInfoActivity;I)V

    .line 328
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity$2;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v2, p4}, Lcom/game/sdk/ui/UserInfoActivity;->access$11(Lcom/game/sdk/ui/UserInfoActivity;I)V

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/game/sdk/ui/UserInfoActivity$2;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    # getter for: Lcom/game/sdk/ui/UserInfoActivity;->year:I
    invoke-static {v3}, Lcom/game/sdk/ui/UserInfoActivity;->access$12(Lcom/game/sdk/ui/UserInfoActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/UserInfoActivity$2;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    # getter for: Lcom/game/sdk/ui/UserInfoActivity;->month:I
    invoke-static {v3}, Lcom/game/sdk/ui/UserInfoActivity;->access$13(Lcom/game/sdk/ui/UserInfoActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/UserInfoActivity$2;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    # getter for: Lcom/game/sdk/ui/UserInfoActivity;->day:I
    invoke-static {v3}, Lcom/game/sdk/ui/UserInfoActivity;->access$14(Lcom/game/sdk/ui/UserInfoActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "newBirth":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/game/sdk/ui/UserInfoActivity$2;->updateDate(Ljava/lang/String;)V

    .line 333
    new-instance v1, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v1}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    .line 334
    .local v1, "uinfo":Lcom/game/sdk/domain/UserInfo;
    iput-object v0, v1, Lcom/game/sdk/domain/UserInfo;->birth:Ljava/lang/String;

    .line 336
    new-instance v2, Lcom/game/sdk/ui/UserInfoActivity$UpdateUserBirthTask;

    iget-object v3, p0, Lcom/game/sdk/ui/UserInfoActivity$2;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-direct {v2, v3, v1}, Lcom/game/sdk/ui/UserInfoActivity$UpdateUserBirthTask;-><init>(Lcom/game/sdk/ui/UserInfoActivity;Lcom/game/sdk/domain/UserInfo;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/UserInfoActivity$UpdateUserBirthTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 337
    return-void
.end method
