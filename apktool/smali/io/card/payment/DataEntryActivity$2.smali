.class Lio/card/payment/DataEntryActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/card/payment/DataEntryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic this$0:Lio/card/payment/DataEntryActivity;


# direct methods
.method constructor <init>(Lio/card/payment/DataEntryActivity;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lio/card/payment/DataEntryActivity$2;->this$0:Lio/card/payment/DataEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lio/card/payment/DataEntryActivity$2;->this$0:Lio/card/payment/DataEntryActivity;

    sget v1, Lio/card/payment/CardIOActivity;->RESULT_ENTRY_CANCELED:I

    invoke-virtual {v0, v1}, Lio/card/payment/DataEntryActivity;->setResult(I)V

    .line 368
    iget-object v0, p0, Lio/card/payment/DataEntryActivity$2;->this$0:Lio/card/payment/DataEntryActivity;

    invoke-virtual {v0}, Lio/card/payment/DataEntryActivity;->finish()V

    .line 369
    return-void
.end method
