transformations
heightInPixelsFor:  aNumber

	^(((self yBottomPosition - self yTopPosition) / self margin) * aNumber) truncated

"
|graf|
graf := WebGraf new.
graf data: #(10 20 30 40 50).
graf heightInPixelsFor: 15.
"