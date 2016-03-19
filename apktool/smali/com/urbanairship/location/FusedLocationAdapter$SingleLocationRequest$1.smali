.class Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;-><init>(Lcom/urbanairship/location/FusedLocationAdapter;Lcom/urbanairship/location/LocationRequestOptions;)V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;

.field final synthetic val$this$0:Lcom/urbanairship/location/FusedLocationAdapter;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;Lcom/urbanairship/location/FusedLocationAdapter;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest$1;->this$1:Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;

    iput-object p2, p0, Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest$1;->val$this$0:Lcom/urbanairship/location/FusedLocationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest$1;->this$1:Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;

    invoke-virtual {v0, p1}, Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;->setResult(Landroid/location/Location;)V

    .line 182
    return-void
.end method
