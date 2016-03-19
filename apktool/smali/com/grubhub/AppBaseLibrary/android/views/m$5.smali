.class synthetic Lcom/grubhub/AppBaseLibrary/android/views/m$5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/views/m;
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 696
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/views/r;->values()[Lcom/grubhub/AppBaseLibrary/android/views/r;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/m$5;->c:[I

    :try_start_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/m$5;->c:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/r;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/views/r;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/r;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/m$5;->c:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/r;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/views/r;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/r;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    .line 666
    :goto_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/views/q;->values()[Lcom/grubhub/AppBaseLibrary/android/views/q;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/m$5;->b:[I

    :try_start_2
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/m$5;->b:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/q;->FULL:Lcom/grubhub/AppBaseLibrary/android/views/q;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/q;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/m$5;->b:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/q;->MATCHING_ITEMS:Lcom/grubhub/AppBaseLibrary/android/views/q;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/q;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/m$5;->b:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/q;->CONDENSED:Lcom/grubhub/AppBaseLibrary/android/views/q;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/q;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    .line 509
    :goto_4
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/views/o;->values()[Lcom/grubhub/AppBaseLibrary/android/views/o;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/m$5;->a:[I

    :try_start_5
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/m$5;->a:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/o;->MIN:Lcom/grubhub/AppBaseLibrary/android/views/o;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/o;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/m$5;->a:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/o;->MAX:Lcom/grubhub/AppBaseLibrary/android/views/o;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/o;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/m$5;->a:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/o;->EXACT:Lcom/grubhub/AppBaseLibrary/android/views/o;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/o;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    .line 666
    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    .line 696
    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
