.class Lcom/urbanairship/push/PushManager$1;
.super Lcom/urbanairship/push/TagGroupsEditor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/PushManager;->editTagGroups()Lcom/urbanairship/push/TagGroupsEditor;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/PushManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/PushManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/urbanairship/push/PushManager$1;->this$0:Lcom/urbanairship/push/PushManager;

    invoke-direct {p0, p2}, Lcom/urbanairship/push/TagGroupsEditor;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addTag(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/push/TagGroupsEditor;
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/urbanairship/push/PushManager$1;->this$0:Lcom/urbanairship/push/PushManager;

    # getter for: Lcom/urbanairship/push/PushManager;->channelTagRegistrationEnabled:Z
    invoke-static {v0}, Lcom/urbanairship/push/PushManager;->access$000(Lcom/urbanairship/push/PushManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to add tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to device tag group when channelTagRegistrationEnabled is true."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 710
    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/urbanairship/push/TagGroupsEditor;->addTag(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/push/TagGroupsEditor;

    move-result-object p0

    goto :goto_0
.end method

.method public addTags(Ljava/lang/String;Ljava/util/Set;)Lcom/urbanairship/push/TagGroupsEditor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/urbanairship/push/TagGroupsEditor;"
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lcom/urbanairship/push/PushManager$1;->this$0:Lcom/urbanairship/push/PushManager;

    # getter for: Lcom/urbanairship/push/PushManager;->channelTagRegistrationEnabled:Z
    invoke-static {v0}, Lcom/urbanairship/push/PushManager;->access$000(Lcom/urbanairship/push/PushManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to add tags { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " } to device tag group when channelTagRegistrationEnabled is true."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 720
    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/urbanairship/push/TagGroupsEditor;->addTags(Ljava/lang/String;Ljava/util/Set;)Lcom/urbanairship/push/TagGroupsEditor;

    move-result-object p0

    goto :goto_0
.end method

.method public removeTag(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/push/TagGroupsEditor;
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/urbanairship/push/PushManager$1;->this$0:Lcom/urbanairship/push/PushManager;

    # getter for: Lcom/urbanairship/push/PushManager;->channelTagRegistrationEnabled:Z
    invoke-static {v0}, Lcom/urbanairship/push/PushManager;->access$000(Lcom/urbanairship/push/PushManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to remove tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from device tag group when channelTagRegistrationEnabled is true."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 729
    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/urbanairship/push/TagGroupsEditor;->removeTag(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/push/TagGroupsEditor;

    move-result-object p0

    goto :goto_0
.end method

.method public removeTags(Ljava/lang/String;Ljava/util/Set;)Lcom/urbanairship/push/TagGroupsEditor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/urbanairship/push/TagGroupsEditor;"
        }
    .end annotation

    .prologue
    .line 734
    iget-object v0, p0, Lcom/urbanairship/push/PushManager$1;->this$0:Lcom/urbanairship/push/PushManager;

    # getter for: Lcom/urbanairship/push/PushManager;->channelTagRegistrationEnabled:Z
    invoke-static {v0}, Lcom/urbanairship/push/PushManager;->access$000(Lcom/urbanairship/push/PushManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to remove tags { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " } from device tag group when channelTagRegistrationEnabled is true."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 739
    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/urbanairship/push/TagGroupsEditor;->removeTags(Ljava/lang/String;Ljava/util/Set;)Lcom/urbanairship/push/TagGroupsEditor;

    move-result-object p0

    goto :goto_0
.end method
