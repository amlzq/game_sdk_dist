.class final Lcom/payeco/android/plugin/f/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/f/d;

.field private final synthetic b:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/f/d;Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/f/h;->a:Lcom/payeco/android/plugin/f/d;

    iput-object p2, p0, Lcom/payeco/android/plugin/f/h;->b:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/payeco/android/plugin/f/h;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/d;->c(Lcom/payeco/android/plugin/f/d;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "payeco_keyboard_pw_bg0"

    invoke-static {v0, v1, v2}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/h;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v1}, Lcom/payeco/android/plugin/f/d;->d(Lcom/payeco/android/plugin/f/d;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/h;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payeco/android/plugin/f/d;->a(Lcom/payeco/android/plugin/f/d;Ljava/util/Calendar;)V

    iget-object v7, p0, Lcom/payeco/android/plugin/f/h;->a:Lcom/payeco/android/plugin/f/d;

    new-instance v0, Lcom/payeco/android/plugin/f/a;

    iget-object v1, p0, Lcom/payeco/android/plugin/f/h;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v1}, Lcom/payeco/android/plugin/f/d;->c(Lcom/payeco/android/plugin/f/d;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v1

    invoke-static {}, Lcom/payeco/android/plugin/f/d;->a()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "payeco_datepPickDialog"

    const-string v4, "style"

    invoke-static {}, Lcom/payeco/android/plugin/f/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/payeco/android/plugin/f/h;->b:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v4, p0, Lcom/payeco/android/plugin/f/h;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v4}, Lcom/payeco/android/plugin/f/d;->a(Lcom/payeco/android/plugin/f/d;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/payeco/android/plugin/f/h;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v5}, Lcom/payeco/android/plugin/f/d;->a(Lcom/payeco/android/plugin/f/d;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/payeco/android/plugin/f/h;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v6}, Lcom/payeco/android/plugin/f/d;->a(Lcom/payeco/android/plugin/f/d;)Ljava/util/Calendar;

    move-result-object v6

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/payeco/android/plugin/f/a;-><init>(Landroid/app/Activity;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, v7, Lcom/payeco/android/plugin/f/d;->a:Lcom/payeco/android/plugin/f/a;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/h;->a:Lcom/payeco/android/plugin/f/d;

    iget-object v0, v0, Lcom/payeco/android/plugin/f/d;->a:Lcom/payeco/android/plugin/f/a;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/a;->show()V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/h;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/d;->c(Lcom/payeco/android/plugin/f/d;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/h;->a:Lcom/payeco/android/plugin/f/d;

    iget-object v1, v1, Lcom/payeco/android/plugin/f/d;->a:Lcom/payeco/android/plugin/f/a;

    invoke-virtual {v1}, Lcom/payeco/android/plugin/f/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/payeco/android/plugin/f/h;->a:Lcom/payeco/android/plugin/f/d;

    iget-object v0, v0, Lcom/payeco/android/plugin/f/d;->a:Lcom/payeco/android/plugin/f/a;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
