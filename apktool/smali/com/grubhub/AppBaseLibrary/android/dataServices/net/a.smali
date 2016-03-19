.class public abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/android/volley/RequestQueue;


# instance fields
.field protected b:Landroid/content/Context;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:I

.field protected h:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->b:Landroid/content/Context;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->g:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->h:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080536

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->e:Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 111
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a:Lcom/android/volley/RequestQueue;

    .line 113
    :cond_0
    return-void
.end method

.method public static b(Lcom/grubhub/AppBaseLibrary/android/b/b;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1079
    const/4 v1, 0x0

    .line 1081
    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1082
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->b:Ljava/lang/String;

    const-string v3, "UnknownHostException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1083
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_HTTP_UNKNOWN_HOST:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 1096
    :goto_0
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->a(Z)V

    move v1, v0

    .line 1099
    :cond_0
    return v1

    .line 1085
    :cond_1
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->b:Ljava/lang/String;

    const-string v3, "HttpHostConnectException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1086
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_HTTP_BAD_CONNECTION:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    goto :goto_0

    .line 1088
    :cond_2
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->b:Ljava/lang/String;

    const-string v3, "ConnectException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1089
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_HTTP_BAD_CONNECTION:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    goto :goto_0

    .line 1091
    :cond_3
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->b:Ljava/lang/String;

    const-string v3, "TimeoutError"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1092
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_HTTP_TIMEOUT:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 138
    if-nez v0, :cond_1

    .line 139
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->b:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Landroid/content/Context;)V

    .line 153
    :cond_0
    :goto_0
    return-object v0

    .line 141
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 142
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Ljava/util/Date;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/c;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->b:Landroid/content/Context;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v3

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;->getRefresh_token()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/c;->a()V

    .line 145
    if-eqz p1, :cond_0

    .line 146
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-interface {p1, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->b:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;"
        }
    .end annotation
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 307
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 310
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/cart/i;->a()V

    .line 311
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    .line 314
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    .line 315
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Ljava/util/ArrayList;)V

    .line 316
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->e(Ljava/util/ArrayList;)V

    .line 317
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->d(Ljava/util/ArrayList;)V

    .line 318
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->h(Ljava/lang/String;)V

    .line 319
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(I)V

    .line 320
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;)V

    .line 321
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Ljava/util/LinkedHashSet;)V

    .line 324
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->i()V

    .line 325
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->k()V

    .line 326
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->m()V

    .line 329
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->j(Z)V

    .line 330
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(I)V

    .line 331
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->k(Z)V

    .line 334
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->l(Z)V

    .line 337
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;)V

    .line 340
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->f(Ljava/util/ArrayList;)V

    .line 343
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v1

    .line 344
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 347
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;-><init>()V

    .line 349
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v3

    .line 350
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddressString()Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {v2, v3, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setAddress(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;)V

    .line 354
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 356
    :cond_0
    return-void
.end method

.method public abstract a(DDLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/login/a;->LOGIN:Lcom/grubhub/AppBaseLibrary/android/login/a;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/login/a;Z)Landroid/content/Intent;

    move-result-object v0

    .line 164
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 167
    :cond_0
    return-void
.end method

.method protected a(Lcom/android/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1026
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSILoggableRequest;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1027
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSILoggableRequest;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSILoggableRequest;->logRequest()V

    .line 1029
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1030
    return-void
.end method

.method public abstract a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;IILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;",
            "II",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Long;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1016
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 1017
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->c:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public abstract a(Ljava/lang/String;FLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;IILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;JLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 1064
    const-string v6, "REQUEST_AUTH_CANCELED"

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;ILjava/lang/String;)V

    invoke-static {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1070
    return-void
.end method

.method public abstract a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/order/g;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;",
            ">;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/order/l;",
            "Ljava/lang/Long;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSITokenizeCreditCardDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPickupInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPickupInfo;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGetPaymentsModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;ZZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/grubhub/AppBaseLibrary/android/order/g;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lcom/grubhub/AppBaseLibrary/android/order/g;",
            "Lcom/grubhub/AppBaseLibrary/android/order/l;",
            "Ljava/lang/Long;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSIAutoCompleteDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/ArrayList;ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;",
            ">;Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserCartsDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method protected a(Lcom/grubhub/AppBaseLibrary/android/b/b;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1040
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->c()Lcom/grubhub/AppBaseLibrary/android/b/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1041
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$2;->a:[I

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->c()Lcom/grubhub/AppBaseLibrary/android/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/b/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1051
    :cond_0
    :goto_0
    return v0

    .line 1046
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1041
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;)Z
.end method

.method public abstract b()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->d:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public abstract b(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;ZZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteListDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract c()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;
.end method

.method public abstract c(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)Z
.end method

.method public abstract d(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract d()Z
.end method

.method public abstract e(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICheckoutResponse;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract g(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract g(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyStatusModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract i(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryLookupDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract i(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract j(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteListDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract k(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteListDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
