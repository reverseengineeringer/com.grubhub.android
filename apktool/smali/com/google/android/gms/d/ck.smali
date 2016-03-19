.class public final Lcom/google/android/gms/d/ck;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/h;


# static fields
.field public static final a:Lcom/google/android/gms/d/ck;


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/gms/common/api/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/d/cl;

    invoke-direct {v0}, Lcom/google/android/gms/d/cl;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/d/cl;->a()Lcom/google/android/gms/d/ck;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/d/ck;->a:Lcom/google/android/gms/d/ck;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/d/ck;->b:Z

    iput-boolean p2, p0, Lcom/google/android/gms/d/ck;->c:Z

    iput-object p3, p0, Lcom/google/android/gms/d/ck;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/d/ck;->e:Lcom/google/android/gms/common/api/q;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/d/ck$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/d/ck;-><init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/q;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/d/ck;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/d/ck;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/d/ck;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/google/android/gms/common/api/q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/d/ck;->e:Lcom/google/android/gms/common/api/q;

    return-object v0
.end method
