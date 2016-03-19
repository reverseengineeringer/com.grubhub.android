.class Landroid/support/v4/app/r;
.super Landroid/support/v4/app/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/v",
        "<",
        "Landroid/support/v4/app/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/q;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/q;)V
    .locals 0

    .prologue
    .line 840
    iput-object p1, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/q;

    .line 841
    invoke-direct {p0, p1}, Landroid/support/v4/app/v;-><init>(Landroid/support/v4/app/q;)V

    .line 842
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/q;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 872
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/q;

    # invokes: Landroid/support/v4/app/q;->requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/app/q;->access$000(Landroid/support/v4/app/q;Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    .line 879
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/q;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 912
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Z
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/q;

    invoke-static {v0, p1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/q;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/q;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 901
    return-void
.end method

.method public c()Landroid/support/v4/app/q;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/q;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->supportInvalidateOptionsMenu()V

    .line 867
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 895
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

.method public synthetic g()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 839
    invoke-virtual {p0}, Landroid/support/v4/app/r;->c()Landroid/support/v4/app/q;

    move-result-object v0

    return-object v0
.end method
