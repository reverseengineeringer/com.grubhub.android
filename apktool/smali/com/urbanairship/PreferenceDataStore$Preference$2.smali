.class Lcom/urbanairship/PreferenceDataStore$Preference$2;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/PreferenceDataStore$Preference;->registerObserver()V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/urbanairship/PreferenceDataStore$Preference;


# direct methods
.method constructor <init>(Lcom/urbanairship/PreferenceDataStore$Preference;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/urbanairship/PreferenceDataStore$Preference$2;->this$1:Lcom/urbanairship/PreferenceDataStore$Preference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 485
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferenceDataStore - Preference updated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore$Preference$2;->this$1:Lcom/urbanairship/PreferenceDataStore$Preference;

    # getter for: Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/urbanairship/PreferenceDataStore$Preference;->access$300(Lcom/urbanairship/PreferenceDataStore$Preference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore$Preference$2;->this$1:Lcom/urbanairship/PreferenceDataStore$Preference;

    iget-object v0, v0, Lcom/urbanairship/PreferenceDataStore$Preference;->this$0:Lcom/urbanairship/PreferenceDataStore;

    iget-object v0, v0, Lcom/urbanairship/PreferenceDataStore;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/urbanairship/PreferenceDataStore$Preference$2$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/PreferenceDataStore$Preference$2$1;-><init>(Lcom/urbanairship/PreferenceDataStore$Preference$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 494
    return-void
.end method
