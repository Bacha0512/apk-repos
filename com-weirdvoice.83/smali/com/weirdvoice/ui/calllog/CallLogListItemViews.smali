.class public final Lcom/weirdvoice/ui/calllog/CallLogListItemViews;
.super Ljava/lang/Object;
.source "CallLogListItemViews.java"


# instance fields
.field public final bottomDivider:Landroid/view/View;

.field public final dividerView:Landroid/view/View;

.field public final phoneCallDetailsViews:Lcom/weirdvoice/ui/calllog/PhoneCallDetailsViews;

.field public final primaryActionView:Landroid/view/View;

.field public final quickContactView:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

.field public final secondaryActionView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/weirdvoice/ui/calllog/PhoneCallDetailsViews;Landroid/view/View;)V
    .locals 0
    .param p1, "quickContactView"    # Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;
    .param p2, "primaryActionView"    # Landroid/view/View;
    .param p3, "secondaryActionView"    # Landroid/widget/ImageView;
    .param p4, "dividerView"    # Landroid/view/View;
    .param p5, "phoneCallDetailsViews"    # Lcom/weirdvoice/ui/calllog/PhoneCallDetailsViews;
    .param p6, "bottomDivider"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->quickContactView:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    .line 56
    iput-object p2, p0, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    .line 57
    iput-object p3, p0, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    .line 58
    iput-object p4, p0, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->dividerView:Landroid/view/View;

    .line 59
    iput-object p5, p0, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/weirdvoice/ui/calllog/PhoneCallDetailsViews;

    .line 60
    iput-object p6, p0, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    .line 61
    return-void
.end method

.method public static fromView(Landroid/view/View;)Lcom/weirdvoice/ui/calllog/CallLogListItemViews;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 64
    new-instance v0, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;

    .line 65
    const v1, 0x7f0b0071

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    .line 66
    const v2, 0x7f0b0070

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 67
    const v3, 0x7f0b0072

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 68
    const v4, 0x7f0b0078

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 69
    invoke-static {p0}, Lcom/weirdvoice/ui/calllog/PhoneCallDetailsViews;->fromView(Landroid/view/View;)Lcom/weirdvoice/ui/calllog/PhoneCallDetailsViews;

    move-result-object v5

    .line 70
    const v6, 0x7f0b0079

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;-><init>(Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/weirdvoice/ui/calllog/PhoneCallDetailsViews;Landroid/view/View;)V

    return-object v0
.end method
