.class Lio/card/payment/CardIOActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/card/payment/CardIOActivity;->setPreviewLayout()V
.end annotation


# instance fields
.field final synthetic this$0:Lio/card/payment/CardIOActivity;


# direct methods
.method constructor <init>(Lio/card/payment/CardIOActivity;)V
    .locals 0

    .prologue
    .line 929
    iput-object p1, p0, Lio/card/payment/CardIOActivity$3;->this$0:Lio/card/payment/CardIOActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lio/card/payment/CardIOActivity$3;->this$0:Lio/card/payment/CardIOActivity;

    # invokes: Lio/card/payment/CardIOActivity;->nextActivity()V
    invoke-static {v0}, Lio/card/payment/CardIOActivity;->access$500(Lio/card/payment/CardIOActivity;)V

    .line 933
    return-void
.end method
