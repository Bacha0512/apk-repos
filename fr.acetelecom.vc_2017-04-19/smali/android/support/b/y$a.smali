.class Landroid/support/b/y$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/b/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Ljava/lang/String;

.field c:Landroid/support/b/ae;

.field d:Landroid/support/b/ao;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Landroid/support/b/ao;Landroid/support/b/ae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/b/y$a;->a:Landroid/view/View;

    iput-object p2, p0, Landroid/support/b/y$a;->b:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/b/y$a;->c:Landroid/support/b/ae;

    iput-object p3, p0, Landroid/support/b/y$a;->d:Landroid/support/b/ao;

    return-void
.end method
