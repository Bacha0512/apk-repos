.class Landroid/support/design/widget/p$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:[I

.field final b:Landroid/support/design/widget/r;


# direct methods
.method constructor <init>([ILandroid/support/design/widget/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/p$a;->a:[I

    iput-object p2, p0, Landroid/support/design/widget/p$a;->b:Landroid/support/design/widget/r;

    return-void
.end method
