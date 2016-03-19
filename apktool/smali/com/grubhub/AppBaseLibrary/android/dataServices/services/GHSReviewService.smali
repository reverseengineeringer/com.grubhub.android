.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSBaseIntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSBaseIntentService;-><init>(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;Z)I
    .locals 3

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;)Z

    move-result v0

    .line 119
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 120
    const/4 v0, 0x0

    .line 123
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;)Z

    move-result v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    .line 131
    if-nez p2, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->d(Ljava/lang/String;)V

    .line 135
    :cond_1
    if-eqz v0, :cond_3

    .line 136
    if-eqz p2, :cond_2

    .line 138
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->b(Ljava/lang/String;)V

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->e(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    .line 146
    :cond_3
    if-nez p2, :cond_4

    .line 148
    invoke-interface {v1, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;)V

    .line 151
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 155
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)I
    .locals 2

    .prologue
    .line 166
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    const/4 v0, 0x0

    .line 170
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->c(Ljava/lang/String;)Z

    move-result v0

    .line 174
    :cond_0
    if-eqz v0, :cond_2

    .line 175
    if-eqz p2, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->d(Ljava/lang/String;)V

    .line 180
    :cond_1
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    .line 182
    :cond_2
    if-nez p2, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(Ljava/lang/String;)V

    .line 187
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 191
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;

    invoke-static {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 55
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;

    invoke-static {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 56
    const-string v1, "order_review"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 68
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;

    invoke-static {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    const-string v1, "quit_order_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 104
    const-string v0, "com.grubhub.service.GHSReviewService.BROADCAST"

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    const-string v1, "com.grubhub.service.GHSReviewService.ORDER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v1, "com.grubhub.service.GHSReviewService.STATUS_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->c()Landroid/support/v4/content/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/o;->a(Landroid/content/Intent;)Z

    .line 108
    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;)Z
    .locals 1

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->getInteraction()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSInteractionType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->getLocation()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->getAnswers()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->ab()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_0

    .line 202
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;->getPastOrders()Ljava/util/ArrayList;

    move-result-object v1

    .line 203
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/d;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    .line 206
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_0

    .line 210
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(Ljava/util/ArrayList;)V

    .line 213
    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 217
    const-string v0, "order_review"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;

    .line 218
    const-string v1, "quit_order_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    if-eqz v0, :cond_2

    .line 222
    invoke-direct {p0, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;Z)I

    move-result v1

    .line 225
    if-ne v1, v3, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->d()V

    .line 231
    :cond_0
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a(Ljava/lang/String;I)V

    .line 276
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    if-eqz v1, :cond_3

    .line 235
    invoke-direct {p0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a(Ljava/lang/String;Z)I

    move-result v0

    .line 238
    if-ne v0, v3, :cond_1

    .line 239
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->d()V

    goto :goto_0

    .line 244
    :cond_3
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v4

    .line 248
    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->h()Ljava/util/HashMap;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 250
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;

    .line 251
    invoke-direct {p0, v0, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;Z)I

    move-result v0

    .line 253
    if-nez v1, :cond_a

    .line 254
    if-ne v0, v3, :cond_4

    move v0, v3

    :goto_2
    move v1, v0

    .line 256
    goto :goto_1

    :cond_4
    move v0, v2

    .line 254
    goto :goto_2

    :cond_5
    move v1, v2

    .line 260
    :cond_6
    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->j()Ljava/util/ArrayList;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 262
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    invoke-direct {p0, v0, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a(Ljava/lang/String;Z)I

    move-result v0

    .line 265
    if-nez v1, :cond_7

    .line 266
    if-ne v0, v3, :cond_8

    move v0, v3

    :goto_4
    move v1, v0

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_4

    .line 272
    :cond_9
    if-eqz v1, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->d()V

    goto :goto_0

    :cond_a
    move v0, v1

    goto :goto_2
.end method
