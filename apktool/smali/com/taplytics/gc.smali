.class Lcom/taplytics/gc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/taplytics/fz;


# direct methods
.method constructor <init>(Lcom/taplytics/fz;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/taplytics/gc;->a:Lcom/taplytics/fz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 435
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 436
    return-void
.end method
