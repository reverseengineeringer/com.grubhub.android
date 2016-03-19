.class Landroid/support/v4/view/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z


# direct methods
.method static a(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 86
    sget-boolean v0, Landroid/support/v4/view/cb;->b:Z

    if-nez v0, :cond_0

    .line 88
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mMinHeight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/cb;->a:Ljava/lang/reflect/Field;

    .line 89
    sget-object v0, Landroid/support/v4/view/cb;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :goto_0
    sput-boolean v2, Landroid/support/v4/view/cb;->b:Z

    .line 96
    :cond_0
    sget-object v0, Landroid/support/v4/view/cb;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 98
    :try_start_1
    sget-object v0, Landroid/support/v4/view/cb;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 105
    :goto_1
    return v0

    .line 99
    :catch_0
    move-exception v0

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 90
    :catch_1
    move-exception v0

    goto :goto_0
.end method
