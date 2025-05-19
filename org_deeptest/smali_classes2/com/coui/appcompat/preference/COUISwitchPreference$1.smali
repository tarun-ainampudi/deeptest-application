.class Lcom/coui/appcompat/preference/COUISwitchPreference$1;
.super Ljava/lang/Object;
.source "COUISwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUISwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field final synthetic val$summaryView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUISwitchPreference;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 168
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$1;->this$0:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$1;->val$summaryView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 173
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 174
    .local v0, "action":I
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$1;->val$summaryView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 175
    .local v1, "start":I
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$1;->val$summaryView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 176
    .local v2, "end":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 177
    .local v3, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 178
    .local v4, "y":F
    iget-object v5, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$1;->val$summaryView:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v5

    .line 179
    .local v5, "position":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v1, v2, :cond_1

    if-le v5, v1, :cond_1

    if-lt v5, v2, :cond_0

    goto :goto_0

    :cond_0
    move v8, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v6

    .line 180
    .local v8, "forbiddenUpdate":Z
    :goto_1
    const/4 v9, 0x3

    if-eq v0, v9, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 182
    :pswitch_0
    if-eqz v8, :cond_2

    .line 183
    return v7

    .line 185
    :cond_2
    iget-object v9, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$1;->val$summaryView:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setPressed(Z)V

    .line 186
    iget-object v6, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$1;->val$summaryView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->invalidate()V

    .line 187
    goto :goto_2

    .line 190
    :cond_3
    :pswitch_1
    iget-object v6, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$1;->val$summaryView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setPressed(Z)V

    .line 191
    iget-object v6, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$1;->val$summaryView:Landroid/widget/TextView;

    const-wide/16 v9, 0x46

    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->postInvalidateDelayed(J)V

    .line 194
    :goto_2
    return v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
