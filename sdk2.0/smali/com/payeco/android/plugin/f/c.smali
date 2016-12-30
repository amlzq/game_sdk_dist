.class final Lcom/payeco/android/plugin/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/f/b;


# direct methods
.method synthetic constructor <init>(Lcom/payeco/android/plugin/f/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/payeco/android/plugin/f/c;-><init>(Lcom/payeco/android/plugin/f/b;B)V

    return-void
.end method

.method private constructor <init>(Lcom/payeco/android/plugin/f/b;B)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {}, Lcom/payeco/android/plugin/f/b;->a()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payeco_digit_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_hx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-static {}, Lcom/payeco/android/plugin/f/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->b(Lcom/payeco/android/plugin/f/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v1}, Lcom/payeco/android/plugin/f/b;->g(Lcom/payeco/android/plugin/f/b;)I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v1}, Lcom/payeco/android/plugin/f/b;->g(Lcom/payeco/android/plugin/f/b;)I

    move-result v1

    if-ge v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->b(Lcom/payeco/android/plugin/f/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const-string v0, "0"

    invoke-direct {p0, p1, v0, v0}, Lcom/payeco/android/plugin/f/c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    invoke-direct {p0, p1, v0, v0}, Lcom/payeco/android/plugin/f/c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "2"

    invoke-direct {p0, p1, v0, v0}, Lcom/payeco/android/plugin/f/c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "3"

    invoke-direct {p0, p1, v0, v0}, Lcom/payeco/android/plugin/f/c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "4"

    invoke-direct {p0, p1, v0, v0}, Lcom/payeco/android/plugin/f/c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "5"

    invoke-direct {p0, p1, v0, v0}, Lcom/payeco/android/plugin/f/c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "6"

    invoke-direct {p0, p1, v0, v0}, Lcom/payeco/android/plugin/f/c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "7"

    invoke-direct {p0, p1, v0, v0}, Lcom/payeco/android/plugin/f/c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "8"

    invoke-direct {p0, p1, v0, v0}, Lcom/payeco/android/plugin/f/c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "9"

    invoke-direct {p0, p1, v0, v0}, Lcom/payeco/android/plugin/f/c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x"

    const-string v1, "X"

    invoke-direct {p0, p1, v0, v1}, Lcom/payeco/android/plugin/f/c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {}, Lcom/payeco/android/plugin/f/b;->a()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "keyboard_back"

    const-string v3, "id"

    invoke-static {}, Lcom/payeco/android/plugin/f/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->b(Lcom/payeco/android/plugin/f/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    iget-object v1, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v1}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v2}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {}, Lcom/payeco/android/plugin/f/b;->a()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "keyboard_invisable"

    const-string v3, "id"

    invoke-static {}, Lcom/payeco/android/plugin/f/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/b;->dismiss()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {}, Lcom/payeco/android/plugin/f/b;->a()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "payeco_digit_ok_hx"

    const-string v3, "id"

    invoke-static {}, Lcom/payeco/android/plugin/f/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->c(Lcom/payeco/android/plugin/f/b;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->b(Lcom/payeco/android/plugin/f/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v1}, Lcom/payeco/android/plugin/f/b;->c(Lcom/payeco/android/plugin/f/b;)I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->d(Lcom/payeco/android/plugin/f/b;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8f93\u5165\u4f4d\u6570\u5c11\u4e8e"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v2}, Lcom/payeco/android/plugin/f/b;->c(Lcom/payeco/android/plugin/f/b;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4f4d\u6570"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    iget-object v1, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v1}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v2}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v1}, Lcom/payeco/android/plugin/f/b;->c(Lcom/payeco/android/plugin/f/b;)I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->d(Lcom/payeco/android/plugin/f/b;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8f93\u5165\u4f4d\u6570\u5c11\u4e8e"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v2}, Lcom/payeco/android/plugin/f/b;->c(Lcom/payeco/android/plugin/f/b;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4f4d\u6570"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/b;->e(Lcom/payeco/android/plugin/f/b;)Lcom/payeco/android/plugin/bridge/JsBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v1}, Lcom/payeco/android/plugin/f/b;->f(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "0"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v4}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/b;->dismiss()V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    iget-object v0, v0, Lcom/payeco/android/plugin/f/b;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v1}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    iget-object v0, v0, Lcom/payeco/android/plugin/f/b;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/payeco/android/plugin/f/c;->a:Lcom/payeco/android/plugin/f/b;

    invoke-static {v1}, Lcom/payeco/android/plugin/f/b;->a(Lcom/payeco/android/plugin/f/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_1
.end method
