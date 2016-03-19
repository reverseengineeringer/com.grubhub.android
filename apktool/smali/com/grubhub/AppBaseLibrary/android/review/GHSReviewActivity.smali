.class public Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;
.super Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/review/d;
.implements Lcom/grubhub/AppBaseLibrary/android/review/e;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field private h:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSInteractionType;

.field private i:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;

.field private j:Landroid/support/v4/app/w;

.field private k:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lcom/grubhub/AppBaseLibrary/android/review/b;

.field private v:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private w:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;-><init>()V

    .line 83
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->w:Landroid/content/BroadcastReceiver;

    .line 118
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSInteractionType;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    const-string v1, "order_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "restaurant_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "restaurant_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "order_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 145
    const-string v1, "interaction_type"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 146
    const-string v1, "location_type"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 147
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Lcom/grubhub/AppBaseLibrary/android/review/b;)Lcom/grubhub/AppBaseLibrary/android/review/b;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->u:Lcom/grubhub/AppBaseLibrary/android/review/b;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->l:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 289
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 290
    const-string v0, "order_id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->d:Ljava/lang/String;

    .line 291
    const-string v0, "restaurant_id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->e:Ljava/lang/String;

    .line 292
    const-string v0, "restaurant_name"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->f:Ljava/lang/String;

    .line 293
    const-string v0, "order_type"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/g;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->g:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 294
    const-string v0, "interaction_type"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSInteractionType;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSInteractionType;

    .line 295
    const-string v0, "location_type"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;

    .line 298
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;

    .line 299
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->setOrderId(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->setRestaurantId(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSInteractionType;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->setInteraction(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSInteractionType;)V

    .line 302
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->setLocation(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;)V

    .line 306
    if-eqz p1, :cond_0

    .line 307
    const-string v0, "review_survey_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->l:Ljava/util/ArrayList;

    .line 308
    const-string v0, "review_complete_loaded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 314
    :goto_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->l:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 315
    iput-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->p:Z

    .line 320
    :goto_1
    if-eqz v0, :cond_2

    .line 321
    iput-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->n:Z

    .line 322
    iput-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->o:Z

    .line 323
    iput-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->r:Z

    .line 324
    iput-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->s:Z

    .line 325
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->q:Z

    .line 326
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/review/b;->SURVEY_COMPLETE:Lcom/grubhub/AppBaseLibrary/android/review/b;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->u:Lcom/grubhub/AppBaseLibrary/android/review/b;

    .line 335
    :goto_2
    return-void

    .line 311
    :cond_0
    iput-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->l:Ljava/util/ArrayList;

    move v0, v1

    goto :goto_0

    .line 317
    :cond_1
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->p:Z

    goto :goto_1

    .line 328
    :cond_2
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->n:Z

    .line 329
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->o:Z

    .line 330
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->r:Z

    .line 331
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->s:Z

    .line 332
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->q:Z

    .line 333
    iput-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->u:Lcom/grubhub/AppBaseLibrary/android/review/b;

    goto :goto_2
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/b/a;)V
    .locals 7

    .prologue
    .line 378
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_REVIEW_SURVEY_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 379
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->i()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$4;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 402
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Lcom/grubhub/AppBaseLibrary/android/b/a;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 513
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(Ljava/util/ArrayList;)Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->j:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 515
    const v2, 0x7f0f0093

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 516
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()I

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->r:Z

    .line 519
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 541
    invoke-static {p1, p2}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->a(Ljava/lang/String;I)Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->j:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 543
    const-class v2, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 544
    const v2, 0x7f040021

    const v3, 0x7f040027

    const v4, 0x7f040020

    const v5, 0x7f040028

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v4/app/ag;->a(IIII)Landroid/support/v4/app/ag;

    .line 545
    const v2, 0x7f0f0093

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 546
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()I

    .line 547
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->o:Z

    return v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->n()V

    return-void
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->k()V

    return-void
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->l()V

    return-void
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    return-object v0
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 342
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->p:Z

    if-nez v0, :cond_1

    .line 343
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->k()V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    const v1, 0x7f08036c

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    goto :goto_0
.end method

.method private j()V
    .locals 7

    .prologue
    .line 361
    const v1, 0x7f08046d

    const v2, 0x7f08046c

    const v3, 0x7f080547

    const v4, 0x7f0803df

    const/4 v5, 0x0

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$3;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;IIIIILcom/grubhub/AppBaseLibrary/android/d;)V

    .line 369
    return-void
.end method

.method private k()V
    .locals 7

    .prologue
    .line 408
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->g:Lcom/grubhub/AppBaseLibrary/android/order/g;

    const-string v4, "1"

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$5;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)V

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$6;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;

    .line 423
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 455
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;

    .line 456
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 484
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;->a()V

    .line 486
    :cond_1
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 492
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;

    invoke-static {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;)Landroid/content/Intent;

    move-result-object v0

    .line 493
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 495
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Z)V

    .line 496
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->q:Z

    .line 497
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 504
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 505
    return-void
.end method

.method private n()V
    .locals 6

    .prologue
    .line 525
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewCompleteFragment;->a(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewCompleteFragment;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->j:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 527
    const v2, 0x7f040021

    const v3, 0x7f040027

    const v4, 0x7f040020

    const v5, 0x7f040028

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v4/app/ag;->a(IIII)Landroid/support/v4/app/ag;

    .line 528
    const v2, 0x7f0f0093

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewCompleteFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 529
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()I

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->s:Z

    .line 532
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;)V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 589
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->addAnswer(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;)V

    .line 592
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->n:Z

    .line 593
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 603
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->b(Ljava/lang/String;I)V

    .line 604
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->j:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    .line 609
    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(Ljava/lang/String;)V

    .line 612
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->o:Z

    .line 598
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->l()V

    .line 599
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 552
    const/4 v1, 0x0

    .line 553
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v2

    .line 554
    const v0, 0x7f0f0093

    invoke-virtual {v2, v0}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_5

    instance-of v3, v0, Lcom/grubhub/AppBaseLibrary/android/a;

    if-eqz v3, :cond_5

    .line 556
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/a;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/a;->f_()Z

    move-result v0

    .line 559
    :goto_0
    if-nez v0, :cond_1

    .line 560
    invoke-virtual {v2}, Landroid/support/v4/app/w;->e()I

    move-result v0

    .line 570
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->s:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->q:Z

    if-eqz v1, :cond_2

    .line 571
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->finish()V

    .line 583
    :cond_1
    :goto_1
    return-void

    .line 572
    :cond_2
    if-nez v0, :cond_4

    .line 573
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->n:Z

    if-eqz v0, :cond_3

    .line 574
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->j()V

    goto :goto_1

    .line 576
    :cond_3
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->m()V

    .line 577
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->finish()V

    goto :goto_1

    .line 580
    :cond_4
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onBackPressed()V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->setContentView(I)V

    .line 168
    const v0, 0x7f0f030d

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->c:Landroid/view/View;

    .line 169
    const v0, 0x7f0f0092

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 171
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->j:Landroid/support/v4/app/w;

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.grubhub.service.GHSReviewService.BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-static {p0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Landroid/os/Bundle;)V

    .line 179
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->w:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 276
    invoke-static {p0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;)V

    .line 280
    :cond_0
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onDestroy()V

    .line 281
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->setIntent(Landroid/content/Intent;)V

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Landroid/os/Bundle;)V

    .line 159
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->i()V

    .line 160
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 261
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 264
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->r:Z

    if-nez v1, :cond_0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->onBackPressed()V

    .line 266
    const/4 v0, 0x1

    .line 268
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onPause()V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->t:Z

    .line 221
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 254
    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onResume()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->t:Z

    .line 197
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->u:Lcom/grubhub/AppBaseLibrary/android/review/b;

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Z)V

    .line 200
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$9;->a:[I

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->u:Lcom/grubhub/AppBaseLibrary/android/review/b;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/review/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 202
    :pswitch_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->n()V

    .line 203
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->u:Lcom/grubhub/AppBaseLibrary/android/review/b;

    goto :goto_0

    .line 206
    :pswitch_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 207
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->u:Lcom/grubhub/AppBaseLibrary/android/review/b;

    goto :goto_0

    .line 210
    :pswitch_2
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->finish()V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 239
    if-nez p1, :cond_0

    .line 240
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 245
    :cond_0
    const-string v0, "review_complete_loaded"

    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->s:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    const-string v0, "review_survey_list"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 248
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 249
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onStart()V

    .line 186
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->i()V

    .line 187
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onStop()V

    .line 227
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;->g()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;

    .line 231
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 235
    :cond_0
    return-void
.end method
