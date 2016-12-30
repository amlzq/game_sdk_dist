.class public final Lcom/payeco/android/plugin/f/b;
.super Landroid/widget/PopupWindow;


# static fields
.field private static q:Landroid/content/res/Resources;

.field private static r:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:Lcom/payeco/android/plugin/bridge/JsBridge;

.field public a:Landroid/widget/EditText;

.field public b:Landroid/widget/Button;

.field public c:Landroid/widget/Button;

.field public d:Landroid/widget/Button;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/Button;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/Button;

.field public i:Landroid/widget/Button;

.field public j:Landroid/widget/Button;

.field public k:Landroid/widget/Button;

.field public l:Landroid/widget/Button;

.field public m:Landroid/widget/Button;

.field public n:Landroid/widget/Button;

.field public o:Landroid/widget/Button;

.field private p:Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Landroid/view/View;

.field private x:Landroid/app/Activity;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;ZZLjava/lang/String;Lcom/payeco/android/plugin/bridge/JsBridge;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payeco/android/plugin/f/b;->s:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payeco/android/plugin/f/b;->t:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->y:Ljava/lang/String;

    const/16 v0, 0x1d

    iput v0, p0, Lcom/payeco/android/plugin/f/b;->z:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/payeco/android/plugin/f/b;->A:I

    iput-object p9, p0, Lcom/payeco/android/plugin/f/b;->B:Lcom/payeco/android/plugin/bridge/JsBridge;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/payeco/android/plugin/f/b;->x:Landroid/app/Activity;

    iput-object p8, p0, Lcom/payeco/android/plugin/f/b;->p:Ljava/lang/String;

    iput p3, p0, Lcom/payeco/android/plugin/f/b;->A:I

    iput p4, p0, Lcom/payeco/android/plugin/f/b;->z:I

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/payeco/android/plugin/f/b;->v:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/payeco/android/plugin/f/b;->s:Z

    iput-boolean p7, p0, Lcom/payeco/android/plugin/f/b;->t:Z

    iput-object p5, p0, Lcom/payeco/android/plugin/f/b;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->x:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget-object v1, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v2, "payeco_plugin_hxkeyboard"

    const-string v3, "layout"

    sget-object v4, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    new-instance v1, Lcom/payeco/android/plugin/f/c;

    invoke-direct {v1, p0}, Lcom/payeco/android/plugin/f/c;-><init>(Lcom/payeco/android/plugin/f/b;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v3, "payeco_keyboard_password_hx"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/payeco/android/plugin/f/b;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->a:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/payeco/android/plugin/f/b;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/payeco/android/plugin/f/b;->y:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v3, "keyboard_back"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v3, "keyboard_invisable"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v3, "payeco_digit_1_hx"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v3, "payeco_digit_2_hx"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v3, "payeco_digit_3_hx"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v3, "payeco_digit_4_hx"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v3, "payeco_digit_5_hx"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v3, "payeco_digit_6_hx"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->i:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v3, "payeco_digit_7_hx"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v3, "payeco_digit_8_hx"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->k:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v3, "payeco_digit_9_hx"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v3, "payeco_digit_0_hx"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v3, "payeco_digit_x_hx"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/payeco/android/plugin/f/b;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->n:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->n:Landroid/widget/Button;

    sget-object v2, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v3, "payeco_btnenable"

    const-string v4, "drawable"

    sget-object v5, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    sget-object v2, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    const-string v3, "payeco_digit_ok_hx"

    const-string v4, "id"

    sget-object v5, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payeco/android/plugin/f/b;->o:Landroid/widget/Button;

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->o:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/f/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/f/b;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/f/b;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->w:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/f/b;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/f/b;->setWidth(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/f/b;->setHeight(I)V

    return-void
.end method

.method static synthetic a()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lcom/payeco/android/plugin/f/b;->q:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/payeco/android/plugin/f/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/f/b;->y:Ljava/lang/String;

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/payeco/android/plugin/f/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/payeco/android/plugin/f/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/payeco/android/plugin/f/b;->t:Z

    return v0
.end method

.method static synthetic c(Lcom/payeco/android/plugin/f/b;)I
    .locals 1

    iget v0, p0, Lcom/payeco/android/plugin/f/b;->A:I

    return v0
.end method

.method static synthetic d(Lcom/payeco/android/plugin/f/b;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->x:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/payeco/android/plugin/f/b;)Lcom/payeco/android/plugin/bridge/JsBridge;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->B:Lcom/payeco/android/plugin/bridge/JsBridge;

    return-object v0
.end method

.method static synthetic f(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/f/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/payeco/android/plugin/f/b;)I
    .locals 1

    iget v0, p0, Lcom/payeco/android/plugin/f/b;->z:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/payeco/android/plugin/f/b;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x50

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/payeco/android/plugin/f/b;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/payeco/android/plugin/f/b;->dismiss()V

    goto :goto_0
.end method
