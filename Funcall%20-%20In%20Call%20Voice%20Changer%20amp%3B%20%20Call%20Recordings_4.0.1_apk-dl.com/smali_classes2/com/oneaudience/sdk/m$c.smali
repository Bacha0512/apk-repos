.class Lcom/oneaudience/sdk/m$c;
.super Landroid/graphics/drawable/GradientDrawable;

# interfaces
.implements Lcom/oneaudience/sdk/m$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 3

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/oneaudience/sdk/m$c;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneaudience/sdk/m$c;->setShape(I)V

    return-void
.end method
