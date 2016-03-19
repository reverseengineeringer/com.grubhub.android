.class public Lcom/urbanairship/location/LocationRequestOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private minDistance:F

.field private minTime:J

.field private priority:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minTime:J

    .line 342
    const/high16 v0, 0x44480000    # 800.0f

    iput v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minDistance:F

    .line 343
    const/4 v0, 0x2

    iput v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->priority:I

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/location/LocationRequestOptions$Builder;)I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->priority:I

    return v0
.end method

.method static synthetic access$100(Lcom/urbanairship/location/LocationRequestOptions$Builder;)J
    .locals 2

    .prologue
    .line 340
    iget-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/urbanairship/location/LocationRequestOptions$Builder;)F
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minDistance:F

    return v0
.end method


# virtual methods
.method public create()Lcom/urbanairship/location/LocationRequestOptions;
    .locals 2

    .prologue
    .line 399
    new-instance v0, Lcom/urbanairship/location/LocationRequestOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(Lcom/urbanairship/location/LocationRequestOptions$Builder;Lcom/urbanairship/location/LocationRequestOptions$1;)V

    return-object v0
.end method

.method public setMinDistance(F)Lcom/urbanairship/location/LocationRequestOptions$Builder;
    .locals 0

    .prologue
    .line 372
    # invokes: Lcom/urbanairship/location/LocationRequestOptions;->verifyMinDistance(F)V
    invoke-static {p1}, Lcom/urbanairship/location/LocationRequestOptions;->access$500(F)V

    .line 373
    iput p1, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minDistance:F

    .line 374
    return-object p0
.end method

.method public setMinTime(JLjava/util/concurrent/TimeUnit;)Lcom/urbanairship/location/LocationRequestOptions$Builder;
    .locals 3

    .prologue
    .line 357
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    # invokes: Lcom/urbanairship/location/LocationRequestOptions;->verifyMinTime(J)V
    invoke-static {v0, v1}, Lcom/urbanairship/location/LocationRequestOptions;->access$400(J)V

    .line 358
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minTime:J

    .line 359
    return-object p0
.end method

.method public setPriority(I)Lcom/urbanairship/location/LocationRequestOptions$Builder;
    .locals 0

    .prologue
    .line 388
    # invokes: Lcom/urbanairship/location/LocationRequestOptions;->verifyPriority(I)V
    invoke-static {p1}, Lcom/urbanairship/location/LocationRequestOptions;->access$600(I)V

    .line 389
    iput p1, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->priority:I

    .line 390
    return-object p0
.end method
