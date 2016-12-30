.class public final Lcom/ipaynow/plugin/conf/c;
.super Ljava/lang/Object;


# static fields
.field public static final ab:Landroid/graphics/drawable/Drawable;

.field public static final ac:Landroid/graphics/drawable/Drawable;

.field public static final ad:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/ipaynow/plugin/conf/PluginConfig;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "shadow_bg.9.png"

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/utils/PluginTools;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    sput-object v0, Lcom/ipaynow/plugin/conf/c;->ab:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/ipaynow/plugin/conf/PluginConfig;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "shadow_window.9.png"

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/utils/PluginTools;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    sput-object v0, Lcom/ipaynow/plugin/conf/c;->ac:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/ipaynow/plugin/conf/PluginConfig;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "textfield_activated_holo_dark.9.png"

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/utils/PluginTools;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    sput-object v0, Lcom/ipaynow/plugin/conf/c;->ad:Landroid/graphics/drawable/Drawable;

    return-void
.end method
