.class public Lcom/weirdvoice/ui/messages/MessageAdapter;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;
    }
.end annotation


# static fields
.field private static dateFormatter:Ljava/text/SimpleDateFormat;


# instance fields
.field mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

.field private personalInfo:Lcom/weirdvoice/models/CallerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/weirdvoice/ui/messages/MessageAdapter;->dateFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 61
    const v0, 0x7f03004a

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 62
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v1, 0x1030046

    invoke-direct {v0, p1, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/weirdvoice/ui/messages/MessageAdapter;->mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

    .line 64
    iget-object v0, p0, Lcom/weirdvoice/ui/messages/MessageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/weirdvoice/models/CallerInfo;->getCallerInfoForSelf(Landroid/content/Context;)Lcom/weirdvoice/models/CallerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/messages/MessageAdapter;->personalInfo:Lcom/weirdvoice/models/CallerInfo;

    .line 66
    return-void
.end method

.method private formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;

    .prologue
    .line 198
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 199
    .local v0, "buf":Landroid/text/SpannableStringBuilder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    if-eqz p3, :cond_1

    const-string v3, "text/html"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 203
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 214
    :cond_0
    :goto_0
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 215
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 217
    .local v2, "startOffset":I
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 219
    iget-object v3, p0, Lcom/weirdvoice/ui/messages/MessageAdapter;->mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 220
    const/16 v5, 0x21

    .line 219
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 222
    return-object v0

    .line 205
    .end local v2    # "startOffset":I
    :cond_1
    invoke-static {}, Lcom/weirdvoice/utils/SmileyParser;->getInstance()Lcom/weirdvoice/utils/SmileyParser;

    move-result-object v1

    .line 206
    .local v1, "parser":Lcom/weirdvoice/utils/SmileyParser;
    invoke-virtual {v1, p2}, Lcom/weirdvoice/utils/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private setPhotoSide(Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;)V
    .locals 6
    .param p1, "tagView"    # Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;
    .param p2, "pos"    # Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    .prologue
    const/16 v2, 0xb

    const/16 v3, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 162
    iget-object v1, p1, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->quickContactView:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    invoke-virtual {v1}, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 163
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v1, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;->LEFT:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    if-ne p2, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 165
    sget-object v1, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;->LEFT:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    if-ne p2, v1, :cond_1

    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 168
    iget-object v1, p1, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->containterBlock:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 169
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v1, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;->LEFT:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    if-ne p2, v1, :cond_2

    move v1, v4

    .line 170
    :goto_2
    const v2, 0x7f0b0071

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 171
    sget-object v1, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;->LEFT:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    if-ne p2, v1, :cond_3

    :goto_3
    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 173
    iget-object v1, p1, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->quickContactView:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    invoke-virtual {v1, p2}, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;->setPosition(Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;)V

    .line 175
    return-void

    :cond_0
    move v1, v3

    .line 164
    goto :goto_0

    :cond_1
    move v3, v2

    .line 166
    goto :goto_1

    :cond_2
    move v1, v5

    .line 169
    goto :goto_2

    :cond_3
    move v5, v4

    .line 171
    goto :goto_3
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;

    .line 82
    .local v15, "tagView":Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;
    new-instance v12, Lcom/weirdvoice/api/SipMessage;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Lcom/weirdvoice/api/SipMessage;-><init>(Landroid/database/Cursor;)V

    .line 84
    .local v12, "msg":Lcom/weirdvoice/api/SipMessage;
    invoke-virtual {v12}, Lcom/weirdvoice/api/SipMessage;->getRemoteNumber()Ljava/lang/String;

    move-result-object v13

    .line 85
    .local v13, "number":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/weirdvoice/api/SipMessage;->getDate()J

    move-result-wide v2

    .line 86
    .local v2, "date":J
    invoke-virtual {v12}, Lcom/weirdvoice/api/SipMessage;->getBodyContent()Ljava/lang/String;

    move-result-object v14

    .line 87
    .local v14, "subject":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/weirdvoice/api/SipMessage;->getErrorContent()Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "errorTxt":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/weirdvoice/api/SipMessage;->getMimeType()Ljava/lang/String;

    move-result-object v11

    .line 89
    .local v11, "mimeType":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/weirdvoice/api/SipMessage;->getType()I

    move-result v17

    .line 91
    .local v17, "type":I
    const-string v16, ""

    .line 92
    .local v16, "timestamp":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 95
    const/high16 v8, 0x40000

    .line 97
    .local v8, "flags":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    .line 96
    invoke-static/range {v2 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v16

    .end local v16    # "timestamp":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 104
    .end local v8    # "flags":I
    .restart local v16    # "timestamp":Ljava/lang/String;
    :goto_0
    iget-object v4, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->dateView:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const/4 v4, 0x6

    move/from16 v0, v17

    if-ne v0, v4, :cond_1

    .line 109
    iget-object v4, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v4, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    const v5, 0x7f0201b0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v4, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    .line 112
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/weirdvoice/ui/messages/MessageAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c008f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 125
    iget-object v4, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->errorView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :goto_2
    iget-object v4, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->contentView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v11}, Lcom/weirdvoice/ui/messages/MessageAdapter;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v12}, Lcom/weirdvoice/api/SipMessage;->isOutgoing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 136
    sget-object v4, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;->LEFT:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/weirdvoice/ui/messages/MessageAdapter;->setPhotoSide(Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;)V

    .line 139
    iget-object v4, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->quickContactView:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/weirdvoice/ui/messages/MessageAdapter;->personalInfo:Lcom/weirdvoice/models/CallerInfo;

    iget-object v5, v5, Lcom/weirdvoice/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/ui/messages/MessageAdapter;->mContext:Landroid/content/Context;

    .line 141
    iget-object v5, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->quickContactView:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    invoke-virtual {v5}, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    .line 142
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/weirdvoice/ui/messages/MessageAdapter;->personalInfo:Lcom/weirdvoice/models/CallerInfo;

    .line 143
    const v7, 0x7f020189

    .line 140
    invoke-static {v4, v5, v6, v7}, Lcom/weirdvoice/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Lcom/weirdvoice/models/CallerInfo;I)V

    .line 159
    :goto_3
    return-void

    .line 101
    :cond_0
    sget-object v4, Lcom/weirdvoice/ui/messages/MessageAdapter;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 113
    :cond_1
    const/4 v4, 0x5

    move/from16 v0, v17

    if-ne v0, v4, :cond_2

    .line 114
    iget-object v4, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v4, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    const v5, 0x7f0202e2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v4, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    .line 117
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/weirdvoice/ui/messages/MessageAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c006e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 119
    :cond_2
    iget-object v4, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v4, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    .line 121
    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 127
    :cond_3
    iget-object v4, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->errorView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v4, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->errorView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 146
    :cond_4
    sget-object v4, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;->RIGHT:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/weirdvoice/ui/messages/MessageAdapter;->setPhotoSide(Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge$ArrowPosition;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/ui/messages/MessageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Lcom/weirdvoice/api/SipMessage;->getFullFrom()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/weirdvoice/models/CallerInfo;->getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lcom/weirdvoice/models/CallerInfo;

    move-result-object v10

    .line 152
    .local v10, "info":Lcom/weirdvoice/models/CallerInfo;
    iget-object v4, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->quickContactView:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    iget-object v5, v10, Lcom/weirdvoice/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/ui/messages/MessageAdapter;->mContext:Landroid/content/Context;

    .line 154
    iget-object v5, v15, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->quickContactView:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    invoke-virtual {v5}, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    .line 156
    const v6, 0x7f020189

    .line 153
    invoke-static {v4, v5, v10, v6}, Lcom/weirdvoice/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Lcom/weirdvoice/models/CallerInfo;I)V

    goto :goto_3
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 182
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;

    invoke-direct {v0}, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;-><init>()V

    .line 183
    .local v0, "tagView":Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;
    const v2, 0x7f0b0101

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->containterBlock:Landroid/widget/LinearLayout;

    .line 184
    const v2, 0x7f0b0102

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->contentView:Landroid/widget/TextView;

    .line 185
    const v2, 0x7f0b0104

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->errorView:Landroid/widget/TextView;

    .line 186
    const v2, 0x7f0b0103

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->dateView:Landroid/widget/TextView;

    .line 187
    const v2, 0x7f0b0071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    iput-object v2, v0, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->quickContactView:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    .line 188
    const v2, 0x7f0b0105

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    .line 190
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 192
    return-object v1
.end method
