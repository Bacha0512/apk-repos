.class public final Landroid/support/v7/recyclerview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RecyclerView:[I

.field public static final RecyclerView_android_descendantFocusability:I = 0x1

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x6

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x9

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0xa

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x7

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x8

.field public static final RecyclerView_layoutManager:I = 0x2

.field public static final RecyclerView_reverseLayout:I = 0x4

.field public static final RecyclerView_spanCount:I = 0x3

.field public static final RecyclerView_stackFromEnd:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    return-void

    :array_0
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f01017d
        0x7f01017e
        0x7f01017f
        0x7f010180
        0x7f010181
        0x7f010182
        0x7f010183
        0x7f010184
        0x7f010185
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
