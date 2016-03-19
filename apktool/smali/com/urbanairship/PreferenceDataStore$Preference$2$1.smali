.class Lcom/urbanairship/PreferenceDataStore$Preference$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/PreferenceDataStore$Preference$2;->onChange(Z)V
.end annotation


# instance fields
.field final synthetic this$2:Lcom/urbanairship/PreferenceDataStore$Preference$2;


# direct methods
.method constructor <init>(Lcom/urbanairship/PreferenceDataStore$Preference$2;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/urbanairship/PreferenceDataStore$Preference$2$1;->this$2:Lcom/urbanairship/PreferenceDataStore$Preference$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore$Preference$2$1;->this$2:Lcom/urbanairship/PreferenceDataStore$Preference$2;

    iget-object v0, v0, Lcom/urbanairship/PreferenceDataStore$Preference$2;->this$1:Lcom/urbanairship/PreferenceDataStore$Preference;

    invoke-virtual {v0}, Lcom/urbanairship/PreferenceDataStore$Preference;->syncValue()V

    .line 492
    return-void
.end method
