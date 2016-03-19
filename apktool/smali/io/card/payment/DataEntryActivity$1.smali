.class Lio/card/payment/DataEntryActivity$1;
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
    .line 343
    iput-object p1, p0, Lio/card/payment/DataEntryActivity$1;->this$0:Lio/card/payment/DataEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lio/card/payment/DataEntryActivity$1;->this$0:Lio/card/payment/DataEntryActivity;

    # invokes: Lio/card/payment/DataEntryActivity;->completed()V
    invoke-static {v0}, Lio/card/payment/DataEntryActivity;->access$000(Lio/card/payment/DataEntryActivity;)V

    .line 347
    return-void
.end method
