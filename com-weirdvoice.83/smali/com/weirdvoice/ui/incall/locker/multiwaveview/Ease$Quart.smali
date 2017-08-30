.class Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Quart;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Quart"
.end annotation


# static fields
.field public static final easeIn:Landroid/animation/TimeInterpolator;

.field public static final easeInOut:Landroid/animation/TimeInterpolator;

.field public static final easeOut:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Quart$1;

    invoke-direct {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Quart$1;-><init>()V

    sput-object v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Quart;->easeIn:Landroid/animation/TimeInterpolator;

    .line 91
    new-instance v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Quart$2;

    invoke-direct {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Quart$2;-><init>()V

    sput-object v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    .line 96
    new-instance v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Quart$3;

    invoke-direct {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Quart$3;-><init>()V

    sput-object v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Quart;->easeInOut:Landroid/animation/TimeInterpolator;

    .line 102
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
