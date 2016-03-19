.class Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;
.super Lcom/urbanairship/location/PendingLocationResult;
.source "SourceFile"


# instance fields
.field private final criteria:Landroid/location/Criteria;

.field private currentProvider:Ljava/lang/String;

.field private final currentProviderListener:Lcom/urbanairship/location/StandardLocationAdapter$AndroidLocationListener;

.field private final options:Lcom/urbanairship/location/LocationRequestOptions;

.field private final providerEnabledListeners:Lcom/urbanairship/location/StandardLocationAdapter$AndroidLocationListener;

.field final synthetic this$0:Lcom/urbanairship/location/StandardLocationAdapter;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/StandardLocationAdapter;Lcom/urbanairship/location/LocationRequestOptions;)V
    .locals 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->this$0:Lcom/urbanairship/location/StandardLocationAdapter;

    invoke-direct {p0}, Lcom/urbanairship/location/PendingLocationResult;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->currentProvider:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->options:Lcom/urbanairship/location/LocationRequestOptions;

    .line 191
    # invokes: Lcom/urbanairship/location/StandardLocationAdapter;->createCriteria(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/location/Criteria;
    invoke-static {p1, p2}, Lcom/urbanairship/location/StandardLocationAdapter;->access$000(Lcom/urbanairship/location/StandardLocationAdapter;Lcom/urbanairship/location/LocationRequestOptions;)Landroid/location/Criteria;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->criteria:Landroid/location/Criteria;

    .line 193
    new-instance v0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$1;-><init>(Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;Lcom/urbanairship/location/StandardLocationAdapter;)V

    iput-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->currentProviderListener:Lcom/urbanairship/location/StandardLocationAdapter$AndroidLocationListener;

    .line 211
    new-instance v0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$2;-><init>(Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;Lcom/urbanairship/location/StandardLocationAdapter;Lcom/urbanairship/location/LocationRequestOptions;)V

    iput-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->providerEnabledListeners:Lcom/urbanairship/location/StandardLocationAdapter$AndroidLocationListener;

    .line 226
    invoke-virtual {p2}, Lcom/urbanairship/location/LocationRequestOptions;->getPriority()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->listenForProvidersEnabled()V

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->listenForLocationChanges()V

    .line 231
    return-void
.end method

.method static synthetic access$200(Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->stopUpdates()V

    return-void
.end method

.method static synthetic access$300(Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->listenForLocationChanges()V

    return-void
.end method

.method static synthetic access$400(Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;)Landroid/location/Criteria;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->criteria:Landroid/location/Criteria;

    return-object v0
.end method

.method static synthetic access$600(Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->currentProvider:Ljava/lang/String;

    return-object v0
.end method

.method private listenForLocationChanges()V
    .locals 6

    .prologue
    .line 234
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->currentProvider:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->this$0:Lcom/urbanairship/location/StandardLocationAdapter;

    # getter for: Lcom/urbanairship/location/StandardLocationAdapter;->locationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/urbanairship/location/StandardLocationAdapter;->access$700(Lcom/urbanairship/location/StandardLocationAdapter;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->currentProviderListener:Lcom/urbanairship/location/StandardLocationAdapter$AndroidLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->this$0:Lcom/urbanairship/location/StandardLocationAdapter;

    iget-object v1, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->criteria:Landroid/location/Criteria;

    iget-object v2, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->options:Lcom/urbanairship/location/LocationRequestOptions;

    # invokes: Lcom/urbanairship/location/StandardLocationAdapter;->getBestProvider(Landroid/location/Criteria;Lcom/urbanairship/location/LocationRequestOptions;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/urbanairship/location/StandardLocationAdapter;->access$500(Lcom/urbanairship/location/StandardLocationAdapter;Landroid/location/Criteria;Lcom/urbanairship/location/LocationRequestOptions;)Ljava/lang/String;

    move-result-object v1

    .line 240
    iput-object v1, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->currentProvider:Ljava/lang/String;

    .line 242
    if-eqz v1, :cond_1

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StandardLocationAdapter - Single request using provider: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->this$0:Lcom/urbanairship/location/StandardLocationAdapter;

    # getter for: Lcom/urbanairship/location/StandardLocationAdapter;->locationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/urbanairship/location/StandardLocationAdapter;->access$700(Lcom/urbanairship/location/StandardLocationAdapter;)Landroid/location/LocationManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->currentProviderListener:Lcom/urbanairship/location/StandardLocationAdapter$AndroidLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 247
    :cond_1
    return-void
.end method

.method private listenForProvidersEnabled()V
    .locals 7

    .prologue
    .line 254
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->this$0:Lcom/urbanairship/location/StandardLocationAdapter;

    # getter for: Lcom/urbanairship/location/StandardLocationAdapter;->locationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/urbanairship/location/StandardLocationAdapter;->access$700(Lcom/urbanairship/location/StandardLocationAdapter;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->criteria:Landroid/location/Criteria;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StandardLocationAdapter - Single location request listening provider enable/disabled for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->this$0:Lcom/urbanairship/location/StandardLocationAdapter;

    # getter for: Lcom/urbanairship/location/StandardLocationAdapter;->locationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/urbanairship/location/StandardLocationAdapter;->access$700(Lcom/urbanairship/location/StandardLocationAdapter;)Landroid/location/LocationManager;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v5, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->providerEnabledListeners:Lcom/urbanairship/location/StandardLocationAdapter$AndroidLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 265
    :cond_0
    return-void
.end method

.method private stopUpdates()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->this$0:Lcom/urbanairship/location/StandardLocationAdapter;

    # getter for: Lcom/urbanairship/location/StandardLocationAdapter;->locationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/urbanairship/location/StandardLocationAdapter;->access$700(Lcom/urbanairship/location/StandardLocationAdapter;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->currentProviderListener:Lcom/urbanairship/location/StandardLocationAdapter$AndroidLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 278
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->this$0:Lcom/urbanairship/location/StandardLocationAdapter;

    # getter for: Lcom/urbanairship/location/StandardLocationAdapter;->locationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/urbanairship/location/StandardLocationAdapter;->access$700(Lcom/urbanairship/location/StandardLocationAdapter;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->providerEnabledListeners:Lcom/urbanairship/location/StandardLocationAdapter$AndroidLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 279
    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 1

    .prologue
    .line 269
    const-string v0, "StandardLocationAdapter - Canceling single request."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->stopUpdates()V

    .line 271
    return-void
.end method
