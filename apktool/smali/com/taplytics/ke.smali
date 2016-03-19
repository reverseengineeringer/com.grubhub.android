.class final Lcom/taplytics/ke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1166
    invoke-static {}, Lcom/taplytics/fi;->a()Lcom/taplytics/fi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fi;->b()V

    .line 1167
    const/4 v0, 0x1

    return v0
.end method
