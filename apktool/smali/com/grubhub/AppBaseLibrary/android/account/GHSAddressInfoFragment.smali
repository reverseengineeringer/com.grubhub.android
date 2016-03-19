.class public Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;
.super Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/address/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/EditText;

.field private B:Landroid/widget/Spinner;

.field private C:Landroid/widget/Button;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/Button;

.field private F:Landroid/view/View;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/view/View;

.field private I:Landroid/widget/TextView;

.field private J:Z

.field private K:Landroid/widget/ViewSwitcher;

.field private L:Landroid/widget/EditText;

.field private M:Landroid/view/View;

.field private N:Z

.field private O:Z

.field private P:Ljava/lang/String;

.field private Q:Landroid/text/TextWatcher;

.field private R:Landroid/text/TextWatcher;

.field private S:Landroid/text/TextWatcher;

.field private T:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

.field private c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

.field private d:Lcom/grubhub/AppBaseLibrary/android/account/b;

.field private e:Lcom/grubhub/AppBaseLibrary/android/account/a;

.field private f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;

.field private g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;

.field private h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

.field private i:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

.field private j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Landroid/widget/ScrollView;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/EditText;

.field private u:Landroid/widget/EditText;

.field private v:Landroid/widget/EditText;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/EditText;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;-><init>()V

    .line 141
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->Q:Landroid/text/TextWatcher;

    .line 163
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$12;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$12;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->R:Landroid/text/TextWatcher;

    .line 183
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$23;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$23;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->S:Landroid/text/TextWatcher;

    .line 216
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$29;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$29;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->T:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1447
    return-void
.end method

.method static synthetic A(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->L:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic B(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->I:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic C(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->k()V

    return-void
.end method

.method static synthetic D(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->M:Landroid/view/View;

    return-object v0
.end method

.method static synthetic E(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->m:Z

    return v0
.end method

.method static synthetic F(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic G(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->j()V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;I)I
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->p:I

    return p1
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/account/a;ZZLjava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 259
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/a;ZZZZLjava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/account/a;ZZZZ)Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;
    .locals 6

    .prologue
    .line 246
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/a;ZZZZLjava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/grubhub/AppBaseLibrary/android/account/a;ZZZZLjava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;
    .locals 4

    .prologue
    .line 274
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;-><init>()V

    .line 276
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 277
    const-string v2, "address_info_type"

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/a;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    const-string v2, "cross_street_required"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 279
    const-string v2, "notify_missing_field_on_load"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    const-string v2, "should_save_to_cart"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    const-string v2, "allow_out_of_range_address"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    const-string v2, "deliver_to_restaurant_id"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 285
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->n()V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->d(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 434
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    invoke-direct {v1, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 436
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1235
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "user account settings"

    const-string v3, "address_save"

    invoke-direct {v1, v2, v3, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 1238
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->r:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1368
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->s:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1369
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1371
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->u:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1372
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->v:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1373
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->w:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1374
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->x:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1375
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1376
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->z:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1377
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->A:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1378
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->B:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1380
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1381
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->E:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1382
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->F:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1383
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1384
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->I:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1385
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->L:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1387
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->C:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1388
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 953
    const v0, 0x7f0f0129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 954
    const v0, 0x7f0f0114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 956
    const v0, 0x7f0f0118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->r:Landroid/widget/EditText;

    .line 957
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->r:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->R:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 959
    const v0, 0x7f0f011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->s:Landroid/widget/EditText;

    .line 960
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->s:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->R:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 962
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/account/a;->VERIFY:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-ne v0, v3, :cond_0

    .line 964
    const v0, 0x7f0f011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    .line 965
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->S:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 968
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 969
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 979
    :goto_0
    return-void

    .line 972
    :cond_0
    const v0, 0x7f0f012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    .line 973
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->S:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 976
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 977
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->h(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->o:Z

    return p1
.end method

.method private c()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 3

    .prologue
    .line 444
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;-><init>()V

    .line 445
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->u:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setAddress1(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setAddress2(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->v:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setCity(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->B:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f00bd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setState(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->A:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setZip(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setCrossStreet(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->x:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setDeliveryInstructions(Ljava/lang/String;)V

    .line 452
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setLabel(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setPhone(Ljava/lang/String;)V

    .line 455
    return-object v1
.end method

.method private c(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 987
    const v0, 0x7f0f0126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->B:Landroid/widget/Spinner;

    .line 989
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const v2, 0x7f03002d

    const v3, 0x7f0f00bd

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 990
    const v1, 0x7f0300c7

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 991
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->B:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 992
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->B:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->T:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 994
    const v0, 0x7f0f0120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->u:Landroid/widget/EditText;

    .line 995
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->u:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->Q:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 997
    const v0, 0x7f0f0124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->v:Landroid/widget/EditText;

    .line 998
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->v:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->Q:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1000
    const v0, 0x7f0f0122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->w:Landroid/widget/EditText;

    .line 1001
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->w:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->R:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1003
    const v0, 0x7f0f012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->y:Landroid/widget/TextView;

    .line 1004
    const v0, 0x7f0f0130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->x:Landroid/widget/EditText;

    .line 1005
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->x:Landroid/widget/EditText;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$18;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$18;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1023
    const v0, 0x7f0f0127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1024
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->l:Z

    if-nez v1, :cond_0

    .line 1025
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1026
    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1027
    const-string v2, "\\*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1028
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    :cond_0
    const v0, 0x7f0f0128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->z:Landroid/widget/EditText;

    .line 1033
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->z:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->R:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1035
    const v0, 0x7f0f012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->A:Landroid/widget/EditText;

    .line 1036
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->A:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->Q:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1038
    const v0, 0x7f0f0133

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->D:Landroid/widget/Button;

    .line 1040
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->D:Landroid/widget/Button;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$19;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$19;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1051
    const v0, 0x7f0f0134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->E:Landroid/widget/Button;

    .line 1052
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->E:Landroid/widget/Button;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$20;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$20;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1063
    const v0, 0x7f0f0135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->F:Landroid/view/View;

    .line 1064
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->F:Landroid/view/View;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$21;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$21;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1082
    const v0, 0x7f0f0136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->I:Landroid/widget/TextView;

    .line 1084
    const v0, 0x7f0f0138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->G:Landroid/widget/ImageView;

    .line 1085
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->G:Landroid/widget/ImageView;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$22;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$22;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    const v0, 0x7f0f0137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->H:Landroid/view/View;

    .line 1098
    const v0, 0x7f0f0132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->K:Landroid/widget/ViewSwitcher;

    .line 1100
    const v0, 0x7f0f0139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1101
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$24;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$24;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    const v0, 0x7f0f013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->L:Landroid/widget/EditText;

    .line 1109
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->L:Landroid/widget/EditText;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$25;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$25;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1119
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->L:Landroid/widget/EditText;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$26;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$26;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1136
    const v0, 0x7f0f013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->M:Landroid/view/View;

    .line 1137
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->M:Landroid/view/View;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$27;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$27;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    const v0, 0x7f0f013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->C:Landroid/widget/Button;

    .line 1145
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->C:Landroid/widget/Button;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$28;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$28;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1161
    return-void
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->g(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    return-void
.end method

.method private c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 5

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->n:Z

    if-eqz v0, :cond_0

    .line 465
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v0

    .line 466
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$30;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$30;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$31;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$31;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    .line 481
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$32;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$32;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 515
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$33;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$33;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 524
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->a()V

    .line 533
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setCountry(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setLatitude(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setLongitude(Ljava/lang/String;)V

    .line 531
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->d(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->o:Z

    return v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->N:Z

    return p1
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->p:I

    return v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    return-void
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Z)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Z)V

    return-void
.end method

.method private d(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 2

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->N:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/a;->ENTER:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/a;->VERIFY:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-ne v0, v1, :cond_1

    .line 565
    :cond_0
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->f(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 573
    :goto_0
    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->P:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 567
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    goto :goto_0

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/a;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-ne v0, v1, :cond_3

    .line 569
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->h(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    goto :goto_0

    .line 571
    :cond_3
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->g(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Z)V

    .line 540
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 544
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e()V

    return-void
.end method

.method private e(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 7

    .prologue
    .line 581
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->P:Ljava/lang/String;

    .line 583
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v3

    .line 584
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLongitude()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$34;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$34;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$2;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    .line 597
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 618
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$4;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 625
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->a()V

    .line 626
    return-void
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 550
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Z)V

    .line 551
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 552
    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->n()V

    .line 556
    return-void
.end method

.method private f(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 6

    .prologue
    .line 635
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSDeliveryInfoDataModel;

    invoke-direct {v3, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSDeliveryInfoDataModel;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 636
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$5;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$6;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;-><init>(Landroid/content/Context;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    .line 653
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 677
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 724
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->a()V

    .line 725
    return-void
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->z:Landroid/widget/EditText;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 884
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->k:Z

    if-nez v0, :cond_0

    .line 885
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->h(Ljava/lang/String;)V

    .line 886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->k:Z

    .line 888
    :cond_0
    return-void
.end method

.method private g(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 4

    .prologue
    .line 733
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$9;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$10;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$10;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;

    .line 750
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 792
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$13;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$13;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 800
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;->a()V

    .line 801
    return-void
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->x:Landroid/widget/EditText;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->r:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 896
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->s:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 898
    :cond_0
    return-void
.end method

.method private h(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 6

    .prologue
    .line 809
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$14;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$14;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$15;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$15;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;

    .line 824
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 870
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$17;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$17;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 877
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;->a()V

    .line 878
    return-void
.end method

.method static synthetic i(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 904
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    if-eqz v0, :cond_2

    .line 905
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->u:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 906
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->w:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 907
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->v:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 908
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->A:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getZip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 909
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->z:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCrossStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 910
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->x:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getDeliveryInstructions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 912
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->B:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 913
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 914
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 915
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 916
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 919
    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->B:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 921
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/h/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 923
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 931
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 932
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 933
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 945
    :cond_2
    :goto_1
    return-void

    .line 924
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 928
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 934
    :cond_5
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 935
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_1

    .line 936
    :cond_6
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 937
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->E:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_1

    .line 939
    :cond_7
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->F:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 940
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->I:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 941
    iput-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->J:Z

    .line 942
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->G:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private j()V
    .locals 8

    .prologue
    const v6, 0x7f0800af

    const/4 v2, 0x1

    .line 1167
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1168
    const/4 v1, 0x0

    .line 1169
    const/4 v0, 0x0

    .line 1172
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v5, Lcom/grubhub/AppBaseLibrary/android/account/a;->VERIFY:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-ne v4, v5, :cond_0

    .line 1173
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->r:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v4, 0x7f080419

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1175
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->r:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->q:Landroid/widget/ScrollView;

    invoke-virtual {p0, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Landroid/view/View;Landroid/widget/ScrollView;)V

    .line 1187
    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 1188
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->u:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1189
    const v1, 0x7f0800a7

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1190
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->u:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->q:Landroid/widget/ScrollView;

    invoke-virtual {p0, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Landroid/view/View;Landroid/widget/ScrollView;)V

    move v7, v0

    move-object v0, v1

    move v1, v7

    .line 1219
    :goto_1
    if-eqz v0, :cond_2

    .line 1221
    if-nez v1, :cond_1

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f080372

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1225
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Ljava/lang/String;Z)V

    .line 1227
    :cond_2
    return-void

    .line 1176
    :cond_3
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->s:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v4, 0x7f08041a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1178
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->s:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->q:Landroid/widget/ScrollView;

    invoke-virtual {p0, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Landroid/view/View;Landroid/widget/ScrollView;)V

    goto :goto_0

    .line 1179
    :cond_4
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1182
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->q:Landroid/widget/ScrollView;

    invoke-virtual {p0, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Landroid/view/View;Landroid/widget/ScrollView;)V

    goto/16 :goto_0

    .line 1191
    :cond_5
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->v:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1192
    const v1, 0x7f0800a9

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1193
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->v:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->q:Landroid/widget/ScrollView;

    invoke-virtual {p0, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Landroid/view/View;Landroid/widget/ScrollView;)V

    move v7, v0

    move-object v0, v1

    move v1, v7

    goto/16 :goto_1

    .line 1194
    :cond_6
    iget-boolean v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->l:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->z:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1195
    const v1, 0x7f0800ad

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1196
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->z:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->q:Landroid/widget/ScrollView;

    invoke-virtual {p0, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Landroid/view/View;Landroid/widget/ScrollView;)V

    move v7, v0

    move-object v0, v1

    move v1, v7

    goto/16 :goto_1

    .line 1197
    :cond_7
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->A:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1198
    const v1, 0x7f0800b2

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1199
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->A:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->q:Landroid/widget/ScrollView;

    invoke-virtual {p0, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Landroid/view/View;Landroid/widget/ScrollView;)V

    move v7, v0

    move-object v0, v1

    move v1, v7

    goto/16 :goto_1

    .line 1200
    :cond_8
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->A:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->g(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1201
    const v0, 0x7f0800b3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1202
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->A:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->q:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Landroid/view/View;Landroid/widget/ScrollView;)V

    move v1, v2

    .line 1203
    goto/16 :goto_1

    .line 1204
    :cond_9
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1206
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1207
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->q:Landroid/widget/ScrollView;

    invoke-virtual {p0, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Landroid/view/View;Landroid/widget/ScrollView;)V

    move v7, v0

    move-object v0, v1

    move v1, v7

    goto/16 :goto_1

    .line 1208
    :cond_a
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/utils/h/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1210
    const v0, 0x7f0802e3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1211
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->q:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Landroid/view/View;Landroid/widget/ScrollView;)V

    move v1, v2

    .line 1212
    goto/16 :goto_1

    .line 1213
    :cond_b
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->m()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1214
    const v0, 0x7f0802e2

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 1215
    goto/16 :goto_1

    :cond_c
    move v7, v0

    move-object v0, v1

    move v1, v7

    goto/16 :goto_1
.end method

.method static synthetic j(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->f()V

    return-void
.end method

.method static synthetic k(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->P:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1244
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->L:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1245
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1246
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->J:Z

    .line 1247
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->I:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1248
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1249
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->H:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1250
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->l()V

    .line 1257
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->F:Landroid/view/View;

    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->J:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1258
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->L:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->K:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 1261
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->d()V

    .line 1263
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->n()V

    .line 1264
    return-void

    .line 1252
    :cond_0
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->J:Z

    .line 1253
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->I:Landroid/widget/TextView;

    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1254
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1255
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->H:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/a;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1270
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 1271
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->E:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 1272
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->F:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1273
    return-void
.end method

.method private m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1279
    const-string v0, ""

    .line 1281
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1282
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1289
    :cond_0
    :goto_0
    return-object v0

    .line 1283
    :cond_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->E:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1284
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->E:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1285
    :cond_2
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->F:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->I:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic m(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->g()V

    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1296
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->C:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1297
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->u:Landroid/widget/EditText;

    .line 1298
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->v:Landroid/widget/EditText;

    .line 1299
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    .line 1300
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/h/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->A:Landroid/widget/EditText;

    .line 1301
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1302
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->m:Z

    .line 1305
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/account/a;->VERIFY:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-ne v0, v3, :cond_0

    .line 1306
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->m:Z

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->r:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->s:Landroid/widget/EditText;

    .line 1307
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->m:Z

    .line 1310
    :cond_0
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->l:Z

    if-eqz v0, :cond_1

    .line 1311
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->m:Z

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->z:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->f(Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->m:Z

    .line 1314
    :cond_1
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->m:Z

    if-eqz v0, :cond_5

    .line 1315
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->C:Landroid/widget/Button;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1320
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 1302
    goto :goto_0

    :cond_4
    move v1, v2

    .line 1307
    goto :goto_1

    .line 1317
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->C:Landroid/widget/Button;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method static synthetic n(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->O:Z

    return v0
.end method

.method static synthetic o(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->N:Z

    return v0
.end method

.method static synthetic p(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/b;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->d:Lcom/grubhub/AppBaseLibrary/android/account/b;

    return-object v0
.end method

.method static synthetic q(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->r:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic r(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->s:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic s(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    return-object v0
.end method

.method static synthetic t(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->D:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic v(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->l()V

    return-void
.end method

.method static synthetic w(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->E:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic x(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->J:Z

    return v0
.end method

.method static synthetic y(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->F:Landroid/view/View;

    return-object v0
.end method

.method static synthetic z(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/widget/ViewSwitcher;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->K:Landroid/widget/ViewSwitcher;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 295
    return-void
.end method

.method public b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 2

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setAddress1(Ljava/lang/String;)V

    .line 1404
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setCity(Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setState(Ljava/lang/String;)V

    .line 1406
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getZip()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setZip(Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setCountry(Ljava/lang/String;)V

    .line 1408
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setLatitude(Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setLongitude(Ljava/lang/String;)V

    .line 1412
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->w:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setAddress2(Ljava/lang/String;)V

    .line 1413
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->z:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setCrossStreet(Ljava/lang/String;)V

    .line 1414
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->x:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setDeliveryInstructions(Ljava/lang/String;)V

    .line 1415
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setLabel(Ljava/lang/String;)V

    .line 1416
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setPhone(Ljava/lang/String;)V

    .line 1418
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->i()V

    .line 1421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->n:Z

    .line 1423
    :cond_0
    return-void
.end method

.method protected d_()V
    .locals 2

    .prologue
    const v1, 0x7f020041

    .line 1392
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->r:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1393
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->s:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1394
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1395
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->u:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1396
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->v:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1397
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onAttach(Landroid/app/Activity;)V

    .line 301
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/b;

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/b;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->d:Lcom/grubhub/AppBaseLibrary/android/account/b;

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/account/b;

    if-eqz v0, :cond_0

    .line 304
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/account/b;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->d:Lcom/grubhub/AppBaseLibrary/android/account/b;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 312
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "address_info_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/a;->getAddressInfoEnum(I)Lcom/grubhub/AppBaseLibrary/android/account/a;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    .line 313
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cross_street_required"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->l:Z

    .line 314
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "should_save_to_cart"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->N:Z

    .line 315
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "allow_out_of_range_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->O:Z

    .line 316
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "deliver_to_restaurant_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->P:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    if-nez v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/a;->ENTER:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/a;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/a;->VERIFY:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-ne v0, v1, :cond_4

    .line 320
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 321
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->t()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 326
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/a;->ENTER:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/a;->VERIFY:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-ne v1, v2, :cond_3

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    if-nez v1, :cond_2

    .line 328
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v1

    .line 329
    if-eqz v1, :cond_2

    .line 330
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 334
    :cond_2
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    .line 342
    :cond_3
    :goto_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->k:Z

    .line 344
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->setHasOptionsMenu(Z)V

    .line 345
    return-void

    .line 338
    :cond_4
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 349
    const v0, 0x7f030049

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 351
    const v0, 0x7f0f0113

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->q:Landroid/widget/ScrollView;

    .line 352
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b(Landroid/view/View;)V

    .line 353
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->c(Landroid/view/View;)V

    .line 356
    if-nez p3, :cond_1

    .line 357
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->h()V

    .line 358
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->i()V

    .line 360
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "notify_missing_field_on_load"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->j()V

    .line 365
    :cond_0
    iput-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->n:Z

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->n:Z

    .line 374
    :cond_2
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->n()V

    .line 376
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 1347
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1349
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 1350
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->d()V

    .line 1351
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1352
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 1353
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(Ljava/lang/String;)V

    .line 1355
    :cond_0
    const/4 v0, 0x1

    .line 1357
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 1324
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1326
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1327
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 1328
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1330
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 1332
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/a;->ADD:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-ne v1, v2, :cond_1

    .line 1333
    const v1, 0x7f080087

    .line 1341
    :goto_0
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 1343
    :cond_0
    return-void

    .line 1334
    :cond_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/a;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-ne v1, v2, :cond_2

    .line 1335
    const v1, 0x7f08007a

    goto :goto_0

    .line 1336
    :cond_2
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/a;->VERIFY:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-ne v1, v2, :cond_3

    .line 1337
    const v1, 0x7f08009b

    goto :goto_0

    .line 1339
    :cond_3
    const v1, 0x7f080076

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 381
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onStart()V

    .line 383
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/a;->ADD:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-ne v0, v1, :cond_0

    .line 384
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_ACCOUNT_INFO:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v2, "edit info_add address"

    invoke-direct {p0, v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    .line 392
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/a;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-ne v0, v1, :cond_1

    .line 386
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_ACCOUNT_INFO:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v2, "edit info_address"

    invoke-direct {p0, v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e:Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/a;->VERIFY:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-ne v0, v1, :cond_2

    .line 388
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_PROCESSING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v2, "verify address"

    invoke-direct {p0, v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_2
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_PROCESSING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v2, "enter info_address"

    invoke-direct {p0, v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 396
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onStop()V

    .line 398
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;->g()V

    .line 400
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/a;

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;->g()V

    .line 405
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->g()V

    .line 410
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    if-eqz v0, :cond_3

    .line 414
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->g()V

    .line 415
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    if-eqz v0, :cond_4

    .line 419
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->g()V

    .line 420
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    .line 423
    :cond_4
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->f()V

    .line 424
    return-void
.end method
