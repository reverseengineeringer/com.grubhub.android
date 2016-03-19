.class public Lcom/taplytics/ds;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field private a:Lcom/taplytics/cx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/taplytics/cx;)V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 16
    iput-object p4, p0, Lcom/taplytics/ds;->a:Lcom/taplytics/cx;

    .line 18
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/taplytics/ds;->a:Lcom/taplytics/cx;

    invoke-virtual {v0, p1}, Lcom/taplytics/cx;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 23
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/taplytics/ds;->a:Lcom/taplytics/cx;

    invoke-virtual {v0, p1}, Lcom/taplytics/cx;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 28
    return-void
.end method
