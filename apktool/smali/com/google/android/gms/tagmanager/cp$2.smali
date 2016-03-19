.class Lcom/google/android/gms/tagmanager/cp$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/eb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cp;-><init>(Landroid/content/Context;Lcom/google/android/gms/d/cs;Lcom/google/android/gms/tagmanager/h;Lcom/google/android/gms/tagmanager/er;Lcom/google/android/gms/tagmanager/er;Lcom/google/android/gms/tagmanager/y;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/eb",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/gms/tagmanager/cr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/cp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cp$2;->a:Lcom/google/android/gms/tagmanager/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/google/android/gms/tagmanager/cr;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tagmanager/cp$2;->a(Ljava/lang/String;Lcom/google/android/gms/tagmanager/cr;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/tagmanager/cr;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/cr;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
