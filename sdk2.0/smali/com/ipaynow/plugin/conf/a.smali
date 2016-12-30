.class public final Lcom/ipaynow/plugin/conf/a;
.super Ljava/lang/Object;


# static fields
.field public static final W:I

.field public static final X:I

.field public static final black:I

.field public static final white:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#00A5DD"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/conf/a;->W:I

    const-string v0, "#2E3A4B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/conf/a;->black:I

    const-string v0, "#F5F7F9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/conf/a;->white:I

    const-string v0, "#D8D8D8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/conf/a;->X:I

    return-void
.end method
