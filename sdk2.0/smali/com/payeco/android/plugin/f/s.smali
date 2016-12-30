.class public final Lcom/payeco/android/plugin/f/s;
.super Landroid/widget/PopupWindow;


# static fields
.field private static b:Landroid/content/res/Resources;

.field private static c:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Lcom/payeco/android/plugin/bridge/JsBridge;

.field private static l:I


# instance fields
.field private a:Landroid/app/Activity;

.field private d:Landroid/view/View;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:I

.field private j:Landroid/widget/TextView;

.field private k:Landroid/os/Handler;

.field private m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/payeco/android/plugin/f/s;->l:I

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 8

    const/4 v0, -0x1

    const/4 v7, 0x0

    invoke-direct {p0, p2, v0, v0, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    new-instance v0, Lcom/payeco/android/plugin/f/t;

    invoke-direct {v0, p0}, Lcom/payeco/android/plugin/f/t;-><init>(Lcom/payeco/android/plugin/f/s;)V

    iput-object v0, p0, Lcom/payeco/android/plugin/f/s;->m:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/payeco/android/plugin/f/s;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/payeco/android/plugin/f/s;->b:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/s;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payeco/android/plugin/f/s;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/payeco/android/plugin/f/s;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/s;->d:Landroid/view/View;

    sget-object v1, Lcom/payeco/android/plugin/f/s;->b:Landroid/content/res/Resources;

    const-string v2, "btnStart"

    const-string v3, "id"

    sget-object v4, Lcom/payeco/android/plugin/f/s;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/payeco/android/plugin/f/s;->d:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/s;->b:Landroid/content/res/Resources;

    const-string v3, "btnPlay"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/s;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/payeco/android/plugin/f/s;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/payeco/android/plugin/f/s;->d:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/s;->b:Landroid/content/res/Resources;

    const-string v3, "btnFinish"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/s;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/payeco/android/plugin/f/s;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/payeco/android/plugin/f/s;->d:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/s;->b:Landroid/content/res/Resources;

    const-string v3, "btnCancel"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/s;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/payeco/android/plugin/f/s;->d:Landroid/view/View;

    sget-object v3, Lcom/payeco/android/plugin/f/s;->b:Landroid/content/res/Resources;

    const-string v4, "time"

    const-string v5, "id"

    sget-object v6, Lcom/payeco/android/plugin/f/s;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/payeco/android/plugin/f/s;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/payeco/android/plugin/f/s;->h:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/payeco/android/plugin/f/s;->g:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/payeco/android/plugin/f/s;->k:Landroid/os/Handler;

    new-instance v2, Lcom/payeco/android/plugin/f/u;

    invoke-direct {v2, p0}, Lcom/payeco/android/plugin/f/u;-><init>(Lcom/payeco/android/plugin/f/s;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/s;->g:Landroid/widget/Button;

    new-instance v2, Lcom/payeco/android/plugin/f/v;

    invoke-direct {v2, p0}, Lcom/payeco/android/plugin/f/v;-><init>(Lcom/payeco/android/plugin/f/s;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/s;->h:Landroid/widget/Button;

    new-instance v2, Lcom/payeco/android/plugin/f/w;

    invoke-direct {v2, p0}, Lcom/payeco/android/plugin/f/w;-><init>(Lcom/payeco/android/plugin/f/s;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/payeco/android/plugin/f/x;

    invoke-direct {v0, p0}, Lcom/payeco/android/plugin/f/x;-><init>(Lcom/payeco/android/plugin/f/s;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/payeco/android/plugin/f/s;->l:I

    return v0
.end method

.method static synthetic a(Lcom/payeco/android/plugin/f/s;)I
    .locals 1

    iget v0, p0, Lcom/payeco/android/plugin/f/s;->i:I

    return v0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/payeco/android/plugin/bridge/JsBridge;I)Lcom/payeco/android/plugin/f/s;
    .locals 6

    const/4 v5, 0x0

    sput p4, Lcom/payeco/android/plugin/f/s;->l:I

    sput-object p2, Lcom/payeco/android/plugin/f/s;->e:Ljava/lang/String;

    sput-object p3, Lcom/payeco/android/plugin/f/s;->f:Lcom/payeco/android/plugin/bridge/JsBridge;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "payeco_plugin_record"

    const-string v4, "layout"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/payeco/android/plugin/f/s;

    invoke-direct {v1, p0, v0}, Lcom/payeco/android/plugin/f/s;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v0}, Lcom/payeco/android/plugin/f/s;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Lcom/payeco/android/plugin/f/s;->update()V

    const/16 v0, 0x50

    invoke-virtual {v1, p1, v0, v5, v5}, Lcom/payeco/android/plugin/f/s;->showAtLocation(Landroid/view/View;III)V

    return-object v1
.end method

.method static synthetic a(Lcom/payeco/android/plugin/f/s;I)V
    .locals 0

    iput p1, p0, Lcom/payeco/android/plugin/f/s;->i:I

    return-void
.end method

.method static synthetic b(Lcom/payeco/android/plugin/f/s;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/f/s;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b()Lcom/payeco/android/plugin/bridge/JsBridge;
    .locals 1

    sget-object v0, Lcom/payeco/android/plugin/f/s;->f:Lcom/payeco/android/plugin/bridge/JsBridge;

    return-object v0
.end method

.method static synthetic c(Lcom/payeco/android/plugin/f/s;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/f/s;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/payeco/android/plugin/f/s;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/payeco/android/plugin/f/s;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/f/s;->m:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/payeco/android/plugin/f/s;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/f/s;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/payeco/android/plugin/f/s;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/f/s;->h:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/payeco/android/plugin/f/s;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/f/s;->g:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/payeco/android/plugin/f/s;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/payeco/android/plugin/f/s;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
