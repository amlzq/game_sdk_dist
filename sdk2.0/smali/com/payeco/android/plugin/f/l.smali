.class public final Lcom/payeco/android/plugin/f/l;
.super Landroid/widget/PopupWindow;


# static fields
.field private static b:Landroid/content/res/Resources;

.field private static c:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Lcom/payeco/android/plugin/bridge/JsBridge;


# instance fields
.field private a:Landroid/app/Activity;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:I

.field private h:Landroid/widget/LinearLayout;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Z

.field private o:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;IILjava/lang/String;)V
    .locals 5

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v1, v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput v0, p0, Lcom/payeco/android/plugin/f/l;->i:I

    iput v0, p0, Lcom/payeco/android/plugin/f/l;->j:I

    new-instance v0, Lcom/payeco/android/plugin/f/m;

    invoke-direct {v0, p0}, Lcom/payeco/android/plugin/f/m;-><init>(Lcom/payeco/android/plugin/f/l;)V

    iput-object v0, p0, Lcom/payeco/android/plugin/f/l;->o:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/payeco/android/plugin/f/l;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/payeco/android/plugin/f/l;->b:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payeco/android/plugin/f/l;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    const/4 v0, 0x1

    iput v0, p0, Lcom/payeco/android/plugin/f/l;->g:I

    iput p4, p0, Lcom/payeco/android/plugin/f/l;->i:I

    iput-object p5, p0, Lcom/payeco/android/plugin/f/l;->k:Ljava/lang/String;

    iput p3, p0, Lcom/payeco/android/plugin/f/l;->j:I

    invoke-direct {p0}, Lcom/payeco/android/plugin/f/l;->a()V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    sget-object v1, Lcom/payeco/android/plugin/f/l;->b:Landroid/content/res/Resources;

    const-string v2, "payeco_keyboardLayout"

    const-string v3, "id"

    sget-object v4, Lcom/payeco/android/plugin/f/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->a:Landroid/app/Activity;

    const-string v1, "id"

    const-string v2, "payeco_keyboard_editText"

    invoke-static {v0, v1, v2}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/l;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    sget-object v1, Lcom/payeco/android/plugin/f/l;->b:Landroid/content/res/Resources;

    const-string v2, "payeco_keyboard_password"

    const-string v3, "id"

    sget-object v4, Lcom/payeco/android/plugin/f/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/l;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->e:Landroid/widget/Button;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->e:Landroid/widget/Button;

    new-instance v1, Lcom/payeco/android/plugin/f/n;

    invoke-direct {v1, p0}, Lcom/payeco/android/plugin/f/n;-><init>(Lcom/payeco/android/plugin/f/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->a:Landroid/app/Activity;

    const-string v1, "id"

    const-string v2, "payeco_keyborad_cancel"

    invoke-static {v0, v1, v2}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/payeco/android/plugin/f/o;

    invoke-direct {v1, p0}, Lcom/payeco/android/plugin/f/o;-><init>(Lcom/payeco/android/plugin/f/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    sget-object v1, Lcom/payeco/android/plugin/f/l;->b:Landroid/content/res/Resources;

    const-string v2, "payeco_confirm_keyboard"

    const-string v3, "id"

    sget-object v4, Lcom/payeco/android/plugin/f/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/l;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->f:Landroid/widget/Button;

    new-instance v1, Lcom/payeco/android/plugin/f/p;

    invoke-direct {v1, p0}, Lcom/payeco/android/plugin/f/p;-><init>(Lcom/payeco/android/plugin/f/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/payeco/android/plugin/f/l;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->e:Landroid/widget/Button;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/payeco/android/plugin/bridge/JsBridge;IILjava/lang/String;)Lcom/payeco/android/plugin/f/l;
    .locals 7

    const/4 v6, 0x0

    sput-object p2, Lcom/payeco/android/plugin/f/l;->m:Ljava/lang/String;

    sput-object p3, Lcom/payeco/android/plugin/f/l;->n:Lcom/payeco/android/plugin/bridge/JsBridge;

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

    const-string v3, "payeco_plugin_keyboard"

    const-string v4, "layout"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lcom/payeco/android/plugin/f/l;

    move-object v1, p0

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/payeco/android/plugin/f/l;-><init>(Landroid/app/Activity;Landroid/view/View;IILjava/lang/String;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/f/l;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/l;->update()V

    const/16 v1, 0x50

    invoke-virtual {v0, p1, v1, v6, v6}, Lcom/payeco/android/plugin/f/l;->showAtLocation(Landroid/view/View;III)V

    return-object v0
.end method

.method private a()V
    .locals 15

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    sget-object v1, Lcom/payeco/android/plugin/f/l;->b:Landroid/content/res/Resources;

    const-string v2, "payeco_digitBodyLayout"

    const-string v3, "id"

    sget-object v4, Lcom/payeco/android/plugin/f/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    sget-object v1, Lcom/payeco/android/plugin/f/l;->b:Landroid/content/res/Resources;

    const-string v2, "payeco_digit_clear"

    const-string v3, "id"

    sget-object v4, Lcom/payeco/android/plugin/f/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/payeco/android/plugin/f/q;

    invoke-direct {v1, p0}, Lcom/payeco/android/plugin/f/q;-><init>(Lcom/payeco/android/plugin/f/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/payeco/android/plugin/f/l;->b:Landroid/content/res/Resources;

    const-string v1, "payeco_digit_0"

    const-string v2, "id"

    sget-object v3, Lcom/payeco/android/plugin/f/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lcom/payeco/android/plugin/f/l;->b:Landroid/content/res/Resources;

    const-string v2, "payeco_digit_1"

    const-string v3, "id"

    sget-object v4, Lcom/payeco/android/plugin/f/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget-object v2, Lcom/payeco/android/plugin/f/l;->b:Landroid/content/res/Resources;

    const-string v3, "payeco_digit_2"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/l;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sget-object v3, Lcom/payeco/android/plugin/f/l;->b:Landroid/content/res/Resources;

    const-string v4, "payeco_digit_3"

    const-string v5, "id"

    sget-object v6, Lcom/payeco/android/plugin/f/l;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    sget-object v4, Lcom/payeco/android/plugin/f/l;->b:Landroid/content/res/Resources;

    const-string v5, "payeco_digit_4"

    const-string v6, "id"

    sget-object v7, Lcom/payeco/android/plugin/f/l;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    sget-object v5, Lcom/payeco/android/plugin/f/l;->b:Landroid/content/res/Resources;

    const-string v6, "payeco_digit_5"

    const-string v7, "id"

    sget-object v8, Lcom/payeco/android/plugin/f/l;->c:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    sget-object v6, Lcom/payeco/android/plugin/f/l;->b:Landroid/content/res/Resources;

    const-string v7, "payeco_digit_6"

    const-string v8, "id"

    sget-object v9, Lcom/payeco/android/plugin/f/l;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    sget-object v7, Lcom/payeco/android/plugin/f/l;->b:Landroid/content/res/Resources;

    const-string v8, "payeco_digit_7"

    const-string v9, "id"

    sget-object v12, Lcom/payeco/android/plugin/f/l;->c:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    sget-object v8, Lcom/payeco/android/plugin/f/l;->b:Landroid/content/res/Resources;

    const-string v9, "payeco_digit_8"

    const-string v12, "id"

    sget-object v13, Lcom/payeco/android/plugin/f/l;->c:Ljava/lang/String;

    invoke-virtual {v8, v9, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    sget-object v9, Lcom/payeco/android/plugin/f/l;->b:Landroid/content/res/Resources;

    const-string v12, "payeco_digit_9"

    const-string v13, "id"

    sget-object v14, Lcom/payeco/android/plugin/f/l;->c:Ljava/lang/String;

    invoke-virtual {v9, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    iget-object v12, p0, Lcom/payeco/android/plugin/f/l;->d:Landroid/view/View;

    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/payeco/android/plugin/f/l;->b()[I

    move-result-object v2

    move v1, v10

    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-interface {v11}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/payeco/android/plugin/f/l;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget v3, v2, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(ILjava/lang/String;ILjava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/payeco/android/plugin/f/l;->n:Lcom/payeco/android/plugin/bridge/JsBridge;

    sget-object v1, Lcom/payeco/android/plugin/f/l;->m:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/payeco/android/plugin/f/l;Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/payeco/android/plugin/f/l;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->a:Landroid/app/Activity;

    const-string v1, "drawable"

    const-string v2, "payeco_keyboard_pw_bg0"

    invoke-static {v0, v1, v2}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/l;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payeco/android/plugin/f/l;->l:Z

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v1, p0, Lcom/payeco/android/plugin/f/l;->e:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/payeco/android/plugin/f/l;->i:I

    if-ge v1, v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payeco/android/plugin/f/l;->e:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/l;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/payeco/android/plugin/f/l;)I
    .locals 1

    iget v0, p0, Lcom/payeco/android/plugin/f/l;->j:I

    return v0
.end method

.method private static b()[I
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v0, 0xa

    new-array v2, v0, [I

    aput v3, v2, v3

    aput v4, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v7, v2, v7

    const/4 v0, 0x6

    const/4 v3, 0x6

    aput v3, v2, v0

    const/4 v0, 0x7

    const/4 v3, 0x7

    aput v3, v2, v0

    const/16 v0, 0x8

    const/16 v3, 0x8

    aput v3, v2, v0

    const/16 v0, 0x9

    const/16 v3, 0x9

    aput v3, v2, v0

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_0

    return-object v1

    :cond_0
    array-length v4, v2

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget v5, v2, v4

    aput v5, v1, v0

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    aget v5, v2, v5

    aput v5, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/payeco/android/plugin/f/l;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payeco/android/plugin/f/l;->l:Z

    return-void
.end method

.method static synthetic d(Lcom/payeco/android/plugin/f/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/payeco/android/plugin/f/l;)V
    .locals 3

    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/l;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->a:Landroid/app/Activity;

    const-string v1, "drawable"

    invoke-static {v0, v1, p2}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/l;->h:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/l;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/payeco/android/plugin/f/l;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final dismiss()V
    .locals 0

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
