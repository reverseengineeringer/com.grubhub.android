.class public abstract Lcom/google/android/gms/maps/internal/al;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/ak;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/ak;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/ak;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/maps/internal/ak;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/internal/am;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/am;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/al;->a(Lcom/google/android/gms/c/g;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/c/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/g;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/al;->b(Lcom/google/android/gms/c/g;)Lcom/google/android/gms/maps/internal/j;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/j;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto :goto_0

    :sswitch_3
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/c/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/g;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Lcom/google/android/gms/maps/l;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/maps/internal/al;->a(Lcom/google/android/gms/c/g;Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/internal/m;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/m;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1

    :sswitch_4
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/al;->a()Lcom/google/android/gms/maps/internal/a;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto :goto_0

    :sswitch_5
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/al;->b()Lcom/google/android/gms/maps/model/internal/g;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/google/android/gms/maps/model/internal/g;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/g;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/maps/internal/al;->a(Lcom/google/android/gms/c/g;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/c/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/g;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->CREATOR:Lcom/google/android/gms/maps/m;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/m;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    move-result-object v1

    :goto_2
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/maps/internal/al;->a(Lcom/google/android/gms/c/g;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/android/gms/maps/internal/y;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/y;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto/16 :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_2

    :sswitch_8
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/c/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/g;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/al;->c(Lcom/google/android/gms/c/g;)Lcom/google/android/gms/maps/internal/v;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/v;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
