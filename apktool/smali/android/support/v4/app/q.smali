.class public Landroid/support/v4/app/q;
.super Landroid/support/v4/app/o;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/b;
.implements Landroid/support/v4/app/h;


# static fields
.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field private static final HONEYCOMB:I = 0xb

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragments:Landroid/support/v4/app/u;

.field final mHandler:Landroid/os/Handler;

.field mOptionsMenuInvalidated:Z

.field mReallyStopped:Z

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/support/v4/app/o;-><init>()V

    .line 91
    new-instance v0, Landroid/support/v4/app/q$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/q$1;-><init>(Landroid/support/v4/app/q;)V

    iput-object v0, p0, Landroid/support/v4/app/q;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Landroid/support/v4/app/r;

    invoke-direct {v0, p0}, Landroid/support/v4/app/r;-><init>(Landroid/support/v4/app/q;)V

    invoke-static {v0}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/v;)Landroid/support/v4/app/u;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    .line 839
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/app/q;Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/q;->requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 674
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 675
    if-nez p3, :cond_1

    .line 676
    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    :cond_0
    return-void

    .line 679
    :cond_1
    invoke-static {p3}, Landroid/support/v4/app/q;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 683
    check-cast p3, Landroid/view/ViewGroup;

    .line 684
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 685
    if-lez v1, :cond_0

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 689
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 690
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, p2, v3}, Landroid/support/v4/app/q;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 827
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 828
    invoke-static {p0, p2, p3}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 837
    :goto_0
    return-void

    .line 831
    :cond_0
    and-int/lit16 v0, p3, -0x100

    if-eqz v0, :cond_1

    .line 832
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 8 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/q;->mRequestedPermissionsFromFragment:Z

    .line 835
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p3, 0xff

    add-int/2addr v0, v1

    invoke-static {p0, p2, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v3, 0x56

    const/16 v1, 0x46

    const/16 v6, 0x2c

    const/16 v5, 0x20

    const/16 v2, 0x2e

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 609
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 611
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 617
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x45

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x48

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x43

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4c

    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x53

    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x50

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    const/16 v0, 0x2d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 639
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 640
    const-string v0, " #"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 643
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 646
    const/high16 v0, -0x1000000

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_1

    .line 654
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 657
    :goto_a
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 658
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 659
    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :cond_1
    :goto_b
    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 614
    :sswitch_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 615
    :sswitch_1
    const/16 v0, 0x49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 616
    :sswitch_2
    const/16 v0, 0x47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 619
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 620
    goto/16 :goto_2

    .line 621
    :cond_4
    const/16 v0, 0x44

    goto/16 :goto_3

    :cond_5
    move v0, v2

    .line 622
    goto/16 :goto_4

    :cond_6
    move v0, v2

    .line 623
    goto/16 :goto_5

    :cond_7
    move v0, v2

    .line 624
    goto/16 :goto_6

    :cond_8
    move v0, v2

    .line 625
    goto/16 :goto_7

    :cond_9
    move v1, v2

    .line 627
    goto/16 :goto_8

    :cond_a
    move v0, v2

    .line 628
    goto/16 :goto_9

    .line 648
    :sswitch_3
    :try_start_1
    const-string v0, "app"

    goto :goto_a

    .line 651
    :sswitch_4
    const-string v0, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    .line 665
    :catch_0
    move-exception v0

    goto :goto_b

    .line 613
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    .line 646
    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/u;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method doReallyStop(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 695
    iget-boolean v0, p0, Landroid/support/v4/app/q;->mReallyStopped:Z

    if-nez v0, :cond_0

    .line 696
    iput-boolean v1, p0, Landroid/support/v4/app/q;->mReallyStopped:Z

    .line 697
    iput-boolean p1, p0, Landroid/support/v4/app/q;->mRetaining:Z

    .line 698
    iget-object v0, p0, Landroid/support/v4/app/q;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 699
    invoke-virtual {p0}, Landroid/support/v4/app/q;->onReallyStop()V

    .line 701
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 588
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 592
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 593
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 594
    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    iget-boolean v1, p0, Landroid/support/v4/app/q;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    iget-boolean v1, p0, Landroid/support/v4/app/q;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 599
    iget-boolean v1, p0, Landroid/support/v4/app/q;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 600
    iget-boolean v1, p0, Landroid/support/v4/app/q;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 601
    iget-object v1, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/support/v4/app/u;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->a()Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/w;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 603
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "View Hierarchy:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/q;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, p3, v1}, Landroid/support/v4/app/q;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 605
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 552
    invoke-virtual {p0}, Landroid/support/v4/app/q;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s;

    .line 554
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v4/app/s;->a:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/w;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->a()Landroid/support/v4/app/w;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/an;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->b()Landroid/support/v4/app/an;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->d()V

    .line 137
    shr-int/lit8 v0, p1, 0x10

    .line 138
    if-eqz v0, :cond_3

    .line 139
    add-int/lit8 v0, v0, -0x1

    .line 140
    iget-object v1, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->c()I

    move-result v1

    .line 141
    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    if-lt v0, v1, :cond_1

    .line 142
    :cond_0
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result fragment index out of range: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/u;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 148
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 149
    if-nez v0, :cond_2

    .line 150
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result no fragment exists for index: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_2
    const v1, 0xffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 158
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/o;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 725
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->a()Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/support/v4/app/q;->supportFinishAfterTransition()V

    .line 169
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/support/v4/app/o;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 231
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->a(Landroid/content/res/Configuration;)V

    .line 232
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;)V

    .line 242
    invoke-super {p0, p1}, Landroid/support/v4/app/o;->onCreate(Landroid/os/Bundle;)V

    .line 244
    invoke-virtual {p0}, Landroid/support/v4/app/q;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s;

    .line 246
    if-eqz v0, :cond_0

    .line 247
    iget-object v2, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    iget-object v3, v0, Landroid/support/v4/app/s;->c:Landroid/support/v4/e/l;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/u;->a(Landroid/support/v4/e/l;)V

    .line 249
    :cond_0
    if-eqz p1, :cond_1

    .line 250
    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 251
    iget-object v3, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Ljava/util/List;

    :goto_0
    invoke-virtual {v3, v2, v0}, Landroid/support/v4/app/u;->a(Landroid/os/Parcelable;Ljava/util/List;)V

    .line 253
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->g()V

    .line 254
    return-void

    :cond_2
    move-object v0, v1

    .line 251
    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 261
    if-nez p1, :cond_1

    .line 262
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/o;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 263
    iget-object v1, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {p0}, Landroid/support/v4/app/q;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/u;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 264
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 272
    :goto_0
    return v0

    .line 270
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 272
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/o;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/o;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/o;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Landroid/support/v4/app/o;->onDestroy()V

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/q;->doReallyStop(Z)V

    .line 290
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->n()V

    .line 291
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->r()V

    .line 292
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p0}, Landroid/support/v4/app/q;->onBackPressed()V

    .line 305
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/o;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Landroid/support/v4/app/o;->onLowMemory()V

    .line 317
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->o()V

    .line 318
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/o;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x1

    .line 337
    :goto_0
    return v0

    .line 329
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 337
    const/4 v0, 0x0

    goto :goto_0

    .line 331
    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/u;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 334
    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/u;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 329
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/support/v4/app/o;->onNewIntent(Landroid/content/Intent;)V

    .line 381
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->d()V

    .line 382
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 346
    packed-switch p1, :pswitch_data_0

    .line 351
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/o;->onPanelClosed(ILandroid/view/Menu;)V

    .line 352
    return-void

    .line 348
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/u;->b(Landroid/view/Menu;)V

    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 359
    invoke-super {p0}, Landroid/support/v4/app/o;->onPause()V

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/q;->mResumed:Z

    .line 361
    iget-object v0, p0, Landroid/support/v4/app/q;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Landroid/support/v4/app/q;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    invoke-virtual {p0}, Landroid/support/v4/app/q;->onResumeFragments()V

    .line 365
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->k()V

    .line 366
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 413
    invoke-super {p0}, Landroid/support/v4/app/o;->onPostResume()V

    .line 414
    iget-object v0, p0, Landroid/support/v4/app/q;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    invoke-virtual {p0}, Landroid/support/v4/app/q;->onResumeFragments()V

    .line 416
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->p()Z

    .line 417
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/support/v4/app/o;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 434
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 435
    iget-boolean v0, p0, Landroid/support/v4/app/q;->mOptionsMenuInvalidated:Z

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/q;->mOptionsMenuInvalidated:Z

    .line 437
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 438
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/q;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 440
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/q;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 441
    iget-object v1, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/u;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 444
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/o;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method onReallyStop()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    iget-boolean v1, p0, Landroid/support/v4/app/q;->mRetaining:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->a(Z)V

    .line 713
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->m()V

    .line 714
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    .line 786
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 787
    if-eqz v0, :cond_1

    .line 788
    add-int/lit8 v0, v0, -0x1

    .line 789
    iget-object v1, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->c()I

    move-result v1

    .line 790
    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    if-lt v0, v1, :cond_2

    .line 791
    :cond_0
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result fragment index out of range: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_1
    :goto_0
    return-void

    .line 795
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/u;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 797
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 798
    if-nez v0, :cond_3

    .line 799
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result no fragment exists for index: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 802
    :cond_3
    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 402
    invoke-super {p0}, Landroid/support/v4/app/o;->onResume()V

    .line 403
    iget-object v0, p0, Landroid/support/v4/app/q;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/q;->mResumed:Z

    .line 405
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->p()Z

    .line 406
    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->j()V

    .line 427
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 461
    iget-boolean v0, p0, Landroid/support/v4/app/q;->mStopped:Z

    if-eqz v0, :cond_0

    .line 462
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/q;->doReallyStop(Z)V

    .line 465
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/q;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 467
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->f()Ljava/util/List;

    move-result-object v2

    .line 468
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->t()Landroid/support/v4/e/l;

    move-result-object v3

    .line 470
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    .line 471
    const/4 v0, 0x0

    .line 478
    :goto_0
    return-object v0

    .line 474
    :cond_1
    new-instance v0, Landroid/support/v4/app/s;

    invoke-direct {v0}, Landroid/support/v4/app/s;-><init>()V

    .line 475
    iput-object v1, v0, Landroid/support/v4/app/s;->a:Ljava/lang/Object;

    .line 476
    iput-object v2, v0, Landroid/support/v4/app/s;->b:Ljava/util/List;

    .line 477
    iput-object v3, v0, Landroid/support/v4/app/s;->c:Landroid/support/v4/e/l;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 486
    invoke-super {p0, p1}, Landroid/support/v4/app/o;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 487
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->e()Landroid/os/Parcelable;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_0

    .line 489
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 491
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 499
    invoke-super {p0}, Landroid/support/v4/app/o;->onStart()V

    .line 501
    iput-boolean v0, p0, Landroid/support/v4/app/q;->mStopped:Z

    .line 502
    iput-boolean v0, p0, Landroid/support/v4/app/q;->mReallyStopped:Z

    .line 503
    iget-object v0, p0, Landroid/support/v4/app/q;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    iget-boolean v0, p0, Landroid/support/v4/app/q;->mCreated:Z

    if-nez v0, :cond_0

    .line 506
    iput-boolean v1, p0, Landroid/support/v4/app/q;->mCreated:Z

    .line 507
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->h()V

    .line 510
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->d()V

    .line 511
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->p()Z

    .line 513
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->q()V

    .line 517
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->i()V

    .line 518
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->s()V

    .line 519
    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->d()V

    .line 389
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 526
    invoke-super {p0}, Landroid/support/v4/app/o;->onStop()V

    .line 528
    iput-boolean v1, p0, Landroid/support/v4/app/q;->mStopped:Z

    .line 529
    iget-object v0, p0, Landroid/support/v4/app/q;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 531
    iget-object v0, p0, Landroid/support/v4/app/q;->mFragments:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->l()V

    .line 532
    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/support/v4/app/dg;)V
    .locals 0

    .prologue
    .line 193
    invoke-static {p0, p1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/support/v4/app/dg;)V

    .line 194
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/support/v4/app/dg;)V
    .locals 0

    .prologue
    .line 206
    invoke-static {p0, p1}, Landroid/support/v4/app/a;->b(Landroid/app/Activity;Landroid/support/v4/app/dg;)V

    .line 207
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 745
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 746
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/o;->startActivityForResult(Landroid/content/Intent;I)V

    .line 749
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 812
    if-ne p3, v0, :cond_0

    .line 813
    invoke-super {p0, p2, v0}, Landroid/support/v4/app/o;->startActivityForResult(Landroid/content/Intent;I)V

    .line 820
    :goto_0
    return-void

    .line 816
    :cond_0
    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    .line 817
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_1
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-super {p0, p2, v0}, Landroid/support/v4/app/o;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    .prologue
    .line 181
    invoke-static {p0}, Landroid/support/v4/app/a;->b(Landroid/app/Activity;)V

    .line 182
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 565
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 568
    invoke-static {p0}, Landroid/support/v4/app/i;->a(Landroid/app/Activity;)V

    .line 575
    :goto_0
    return-void

    .line 574
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/q;->mOptionsMenuInvalidated:Z

    goto :goto_0
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    .prologue
    .line 214
    invoke-static {p0}, Landroid/support/v4/app/a;->c(Landroid/app/Activity;)V

    .line 215
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    .prologue
    .line 222
    invoke-static {p0}, Landroid/support/v4/app/a;->d(Landroid/app/Activity;)V

    .line 223
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 2

    .prologue
    .line 760
    iget-boolean v0, p0, Landroid/support/v4/app/q;->mRequestedPermissionsFromFragment:Z

    if-eqz v0, :cond_1

    .line 761
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/q;->mRequestedPermissionsFromFragment:Z

    .line 765
    :cond_0
    return-void

    .line 762
    :cond_1
    and-int/lit16 v0, p1, -0x100

    if-eqz v0, :cond_0

    .line 763
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 8 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
