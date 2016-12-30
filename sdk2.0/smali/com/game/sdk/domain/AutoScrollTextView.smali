.class public Lcom/game/sdk/domain/AutoScrollTextView;
.super Landroid/widget/TextView;
.source "AutoScrollTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/domain/AutoScrollTextView$SavedState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public isStarting:Z

.field private paint:Landroid/graphics/Paint;

.field private step:F

.field private temp_view_plus_text_length:F

.field private temp_view_plus_two_text_length:F

.field private text:Ljava/lang/String;

.field private textLength:F

.field private viewWidth:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/game/sdk/domain/AutoScrollTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/domain/AutoScrollTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->textLength:F

    .line 19
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->viewWidth:F

    .line 20
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->step:F

    .line 21
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->y:F

    .line 22
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->temp_view_plus_text_length:F

    .line 23
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->temp_view_plus_two_text_length:F

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->isStarting:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->paint:Landroid/graphics/Paint;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->text:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/game/sdk/domain/AutoScrollTextView;->initView()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->textLength:F

    .line 19
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->viewWidth:F

    .line 20
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->step:F

    .line 21
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->y:F

    .line 22
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->temp_view_plus_text_length:F

    .line 23
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->temp_view_plus_two_text_length:F

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->isStarting:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->paint:Landroid/graphics/Paint;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->text:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/game/sdk/domain/AutoScrollTextView;->initView()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->textLength:F

    .line 19
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->viewWidth:F

    .line 20
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->step:F

    .line 21
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->y:F

    .line 22
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->temp_view_plus_text_length:F

    .line 23
    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->temp_view_plus_two_text_length:F

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->isStarting:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->paint:Landroid/graphics/Paint;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->text:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/game/sdk/domain/AutoScrollTextView;->initView()V

    .line 41
    return-void
.end method

.method private initView()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0, p0}, Lcom/game/sdk/domain/AutoScrollTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method public init(Landroid/view/WindowManager;)V
    .locals 4
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/game/sdk/domain/AutoScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->paint:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p0}, Lcom/game/sdk/domain/AutoScrollTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->text:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/game/sdk/domain/AutoScrollTextView;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->textLength:F

    .line 51
    invoke-virtual {p0}, Lcom/game/sdk/domain/AutoScrollTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->viewWidth:F

    .line 52
    iget v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->viewWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 55
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->viewWidth:F

    .line 58
    .end local v0    # "display":Landroid/view/Display;
    :cond_0
    iget v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->textLength:F

    iput v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->step:F

    .line 59
    iget v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->viewWidth:F

    iget v2, p0, Lcom/game/sdk/domain/AutoScrollTextView;->textLength:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->temp_view_plus_text_length:F

    .line 60
    iget v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->viewWidth:F

    iget v2, p0, Lcom/game/sdk/domain/AutoScrollTextView;->textLength:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->temp_view_plus_two_text_length:F

    .line 61
    invoke-virtual {p0}, Lcom/game/sdk/domain/AutoScrollTextView;->getTextSize()F

    move-result v1

    invoke-virtual {p0}, Lcom/game/sdk/domain/AutoScrollTextView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->y:F

    .line 62
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->isStarting:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/game/sdk/domain/AutoScrollTextView;->stopScroll()V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/game/sdk/domain/AutoScrollTextView;->startScroll()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->text:Ljava/lang/String;

    iget v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->temp_view_plus_text_length:F

    iget v2, p0, Lcom/game/sdk/domain/AutoScrollTextView;->step:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/game/sdk/domain/AutoScrollTextView;->y:F

    iget-object v3, p0, Lcom/game/sdk/domain/AutoScrollTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 140
    iget-boolean v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->isStarting:Z

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 143
    :cond_0
    iget v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->step:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->step:F

    .line 144
    iget v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->step:F

    iget v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->temp_view_plus_two_text_length:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 145
    iget v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->textLength:F

    iput v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->step:F

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/game/sdk/domain/AutoScrollTextView;->invalidate()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 78
    instance-of v1, p1, Lcom/game/sdk/domain/AutoScrollTextView$SavedState;

    if-nez v1, :cond_0

    .line 79
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 88
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 82
    check-cast v0, Lcom/game/sdk/domain/AutoScrollTextView$SavedState;

    .line 83
    .local v0, "ss":Lcom/game/sdk/domain/AutoScrollTextView$SavedState;
    invoke-virtual {v0}, Lcom/game/sdk/domain/AutoScrollTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 85
    iget v1, v0, Lcom/game/sdk/domain/AutoScrollTextView$SavedState;->step:F

    iput v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->step:F

    .line 86
    iget-boolean v1, v0, Lcom/game/sdk/domain/AutoScrollTextView$SavedState;->isStarting:Z

    iput-boolean v1, p0, Lcom/game/sdk/domain/AutoScrollTextView;->isStarting:Z

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 67
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/game/sdk/domain/AutoScrollTextView$SavedState;

    invoke-direct {v0, v1}, Lcom/game/sdk/domain/AutoScrollTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 69
    .local v0, "ss":Lcom/game/sdk/domain/AutoScrollTextView$SavedState;
    iget v2, p0, Lcom/game/sdk/domain/AutoScrollTextView;->step:F

    iput v2, v0, Lcom/game/sdk/domain/AutoScrollTextView$SavedState;->step:F

    .line 70
    iget-boolean v2, p0, Lcom/game/sdk/domain/AutoScrollTextView;->isStarting:Z

    iput-boolean v2, v0, Lcom/game/sdk/domain/AutoScrollTextView$SavedState;->isStarting:Z

    .line 72
    return-object v0
.end method

.method public startScroll()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->isStarting:Z

    .line 129
    invoke-virtual {p0}, Lcom/game/sdk/domain/AutoScrollTextView;->invalidate()V

    .line 130
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game/sdk/domain/AutoScrollTextView;->isStarting:Z

    .line 134
    invoke-virtual {p0}, Lcom/game/sdk/domain/AutoScrollTextView;->invalidate()V

    .line 135
    return-void
.end method
