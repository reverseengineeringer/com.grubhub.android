.class final Lcom/crashlytics/android/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/p;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/p;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/crashlytics/android/r;->a:Lcom/crashlytics/android/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/crashlytics/android/r;->a:Lcom/crashlytics/android/p;

    iget-object v0, v0, Lcom/crashlytics/android/p;->a:Lcom/crashlytics/android/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/u;->a(Z)V

    .line 710
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 711
    return-void
.end method
